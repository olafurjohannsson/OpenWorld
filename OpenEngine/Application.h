//
// Created by olafurj on 03/09/18.
//

#ifndef OPENWORLD_APPLICATION_H
#define OPENWORLD_APPLICATION_H


#define SPDLOG_TRACE_ON
#define SPDLOG_DEBUG_ON

#include <spdlog/spdlog.h>
#include <spdlog/sinks/stdout_color_sinks.h>
#include <spdlog/sinks/basic_file_sink.h>
#include <spdlog/common.h>
#include <fmt/format.h>
#include <libconfig/libconfig.hh>
#include <filesystem>
#include <iostream>
#include "../learnopengl/shader.h"
#include "Renderer.h"


/**
 * Application class
 *
 * Initites logging and config
 *
 * It also keeps the main 3D renderer
 */
class Application
{
public:
    enum State
    {
        ACTIVE,
        MENU,
        WIN
    };

    /**
     * Kill application
     * @param msg
     */
    static void abort( const std::string &msg )
    {
        console->critical( msg );
        std::exit( 0 );
    }

    /****
     * Initialize application, setup config and console/file logging
     */
    static void init();

    /**
     * Create 3D renderer
     */
    static void createRenderer();

    /**
     * Read from config file
     * @tparam T Type of return value
     * @param key Key in the file
     * @param defaultValue If no value was found we default to this
     * @param success Extra param if user wants to use boolean logic instead of default value
     * @return The value or or defaultValue
     */
    template< typename T >
    static T getConfigValue( const char *key, const T defaultValue, bool &success );

    /**
     * Overloaded static function of getConfigValue without the boolean logic
     */
    template< typename T >
    static T getConfigValue( const char *key, const T defaultValue );

    /**
     * Application state
     */
    static inline const char *title;
    static inline std::shared_ptr< spdlog::logger > console = nullptr;
    static inline std::shared_ptr< spdlog::logger > file = nullptr;
    static inline std::shared_ptr< libconfig::Config > config = nullptr;
    static inline std::shared_ptr< Renderer > renderer = nullptr;
    static inline State state;
    static const char* getRootPath()
    {
        return Application::rootPath;
    }
private:
    static constexpr char *defaultappFilePath = ( char * ) "app.config";
    static inline char *appFilePath = nullptr;
    static constexpr char *defaultAppName = ( char * ) "OpenWorld";
    static inline char *appName = nullptr;
    static inline char *rootPath = nullptr;
    static inline bool rendererCreated = false;
};


template< typename T >
T Application::getConfigValue( const char *key, const T defaultValue, bool &success )
{
    success = Application::config->exists( key );
    if( success )
    {
        return Application::config->lookup( key );
    }
    return defaultValue;
}

template< typename T >
T Application::getConfigValue( const char *key, const T defaultValue )
{
    bool success = false;
    return Application::getConfigValue( key, defaultValue, success );
}

void Application::createRenderer()
{
    if( Application::rendererCreated )
    {
        return;
    }
    Application::renderer = std::shared_ptr< Renderer >( new Renderer() );
    Application::rendererCreated = true;
}

namespace
{
std::string formatPath( const std::string &p )
{
    std::stringstream ss;
    ss << Application::getRootPath();
    ss << "/";
    ss << p;
    return ss.str();
}

std::filesystem::path findRootPath( const std::string &targetPath )
{
    /**
     * This will only be evaluated when the program counter reaches
     * this instruction and computes it, so it's best called before
     * changing any working directories
     */
    static const std::filesystem::path execPath( std::filesystem::current_path() );
    for( auto p = execPath; p != p.root_path(); p = p.parent_path() )
    {
        if( std::filesystem::directory_entry{ p }.exists() )
        {
            const std::size_t fwdSlash( p.string().find_last_of( '/' ) );
            const std::string s( p.string().substr( fwdSlash + 1, p.string().size() ) );

            if( targetPath == s )
            {
                return p;
            }
        }
    }

    return execPath;
}
}

void Application::init()
{
    static bool initialized = false;
    static Application application;

    if( !initialized )
    {
        /**
         * Initialize stdout logging
         */
        console = spdlog::stdout_color_mt( "console" );
        console->info( "Initializing application instance" );


#ifdef RELEASE
        console->set_level( spdlog::level::warn );
#else
        console->set_level( spdlog::level::trace );
#endif
        /**
         * Try to read config file on environment var "OPENWORLDappFilePath" or default to "app.config" relative to root
         */
        try
        {
            console->info( "Reading app path for config file" );

            // find root path
            char *appName = std::getenv( "OPENWORLDAPPNAME" );
            if( nullptr == appName )
            {
                Application::appName = Application::defaultAppName;
                console->info( "App name null, using default {}", Application::appName );
            }
            else
            {
                Application::appName = appName;
                console->info( "AppName {}", Application::appName );
            }

            const std::string rootPath = findRootPath( std::string( Application::appName ) );
            if( not std::filesystem::exists( std::filesystem::path( rootPath.c_str() ) ) )
            {
                Application::abort( "Root path does not exist!" );
            }
            Application::rootPath = const_cast< char* >( rootPath.c_str() );

            // Get file path to config file
            char *appFilePath = std::getenv( "OPENWORLDAPPFILEPATH" );
            if( nullptr == appFilePath )
            {
                std::stringstream ss;
                ss << Application::rootPath << "/" << Application::defaultappFilePath;
                appFilePath = const_cast< char* >( ss.str().c_str() );
                console->info( "App file path null, using default {}", appFilePath );
            }
            else
            {
                std::memcpy( Application::appFilePath, appFilePath, std::strlen( appFilePath ) );
                console->info( "App path {} used", Application::appFilePath );
            }



            auto filePath = std::filesystem::path( appFilePath );
            if( not std::filesystem::exists( filePath ) )
            {
                std::stringstream ss;
                ss << "Filepath " << appFilePath << " does not exist" << std::endl;
                Application::abort( ss.str() );
            }

            // Create libconfig pointer and try to read file
            config = std::make_shared< libconfig::Config >();
            config->readFile( appFilePath );
            // set title
            Application::title = config->lookup( "title" );
            // get log path
            std::string logPath = formatPath( config->lookup( "log_path" ) );

            if( !logPath.empty() )
            {
                file = spdlog::basic_logger_mt( "file", logPath );
                console->info( "File logger on path {} initialized", logPath );

#ifdef RELEASE
                file->set_level( spdlog::level::warn );
#else
                file->set_level( spdlog::level::trace );
#endif

            }
            else
            {
                console->info( "Logpath is empty!" );
            }
        }
        catch ( const libconfig::FileIOException &fioex )
        {
            /**
             * Log to stdout and kill app
             */
            console->error( "Cannot continue app without configuration file" );
            Application::abort( fioex.what() );
        }
        catch ( const libconfig::ParseException &pex )
        {
            /**
             * Log to stdout and kill app
             */
            console->error( "Parse error at {}:{} - {}", pex.getFile(), pex.getLine(), pex.getError() );
            Application::abort( "Cannot continue app without configuration file!" );
        }

        initialized = true;

        char buff[ FILENAME_MAX ];
        getcwd( buff, FILENAME_MAX );
        std::string cwd( buff );

        console->info( "Application {} initialized from directory {}", Application::title, cwd );
    }
    else
    {
        console->info( "Application {} is already initialized", Application::title );
    }
}


#endif //OPENWORLD_APPLICATION_H
