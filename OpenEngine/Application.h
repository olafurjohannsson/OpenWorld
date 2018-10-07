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
class Application {
public:
    enum State {
        ACTIVE,
        MENU,
        WIN
    };

    /**
     * Kill application
     * @param msg
     */
    static void abort( const std::string &msg ) {
        console->critical( msg );
        exit( 0 );
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
    template<typename T>
    static T getConfigValue( const char *key, const T defaultValue, bool &success );

    /**
     * Overloaded static function of getConfigValue without the boolean logic
     */
    template<typename T>
    static T getConfigValue( const char *key, const T defaultValue );

    /**
     * Application state
     */
    static const char *title;
    static std::shared_ptr<spdlog::logger> console;
    static std::shared_ptr<spdlog::logger> file;
    static std::shared_ptr<libconfig::Config> config;
    static std::shared_ptr<Renderer> renderer;
    static State state;
private:
    static constexpr char *appPath = (char *) "app.config";
    static bool rendererCreated;
};

#include "Application.h"

std::shared_ptr<Renderer> Application::renderer = nullptr;
std::shared_ptr<libconfig::Config> Application::config = nullptr;
std::shared_ptr<spdlog::logger> Application::console = nullptr;
std::shared_ptr<spdlog::logger> Application::file = nullptr;
const char *Application::title = nullptr;
constexpr char *Application::appPath;
bool Application::rendererCreated = false;
Application::State Application::state = Application::State::ACTIVE;

template<typename T>
T Application::getConfigValue( const char *key, const T defaultValue, bool &success ) {
    success = Application::config->exists( key );
    if ( success ) {
        return Application::config->lookup( key );
    }
    return defaultValue;
}

template<typename T>
T Application::getConfigValue( const char *key, const T defaultValue ) {
    bool success = false;
    return Application::getConfigValue( key, defaultValue, success );
}

void Application::createRenderer() {
    if ( Application::rendererCreated ) {
        return;
    }
    Application::renderer = std::shared_ptr<Renderer>( new Renderer());
    Application::rendererCreated = true;
}

void Application::init() {
    static bool initialized = false;
    static Application application;

    if ( !initialized ) {
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
         * Try to read config file on environment var "OPENWORLDAPPPATH" or default to "app.config" relative to root
         */
        try {
            console->info( "Reading app path for config file" );

            // Get file path to config file
            char *filePath = std::getenv( "OPENWORLDAPPPATH" );
            if ( filePath == NULL ) {
                filePath = (char *) Application::appPath;
                console->info( "App path null, using default {}", filePath );
            } else {
                console->info( "App path {} used", filePath );
            }

            // Create libconfig pointer and try to read file
            config = std::make_shared<libconfig::Config>();
            config->readFile( filePath );
            // set title
            Application::title = config->lookup( "title" );
            // get log path
            std::string logPath = config->lookup( "log_path" );

            if ( !logPath.empty()) {
                file = spdlog::basic_logger_mt( "file", logPath );
                console->info( "File logger on path {} initialized", logPath );

#ifdef RELEASE
                file->set_level( spdlog::level::warn );
#else
                file->set_level( spdlog::level::trace );
#endif

            } else {
                console->info( "Logpath is empty!" );
            }

        } catch ( const libconfig::FileIOException &fioex ) {
            /**
             * Log to stdout and kill app
             */
            console->error( "I/O error while reading file." );
            Application::abort( "Cannot continue app without configuration file!" );
        } catch ( const libconfig::ParseException &pex ) {
            /**
             * Log to stdout and kill app
             */
            console->error( "Parse error at {}:{} - {}", pex.getFile(), pex.getLine(), pex.getError());
            Application::abort( "Cannot continue app without configuration file!" );
        }

        initialized = true;

        char buff[FILENAME_MAX];
        getcwd( buff, FILENAME_MAX );
        std::string cwd( buff );

        console->info( "Application {} initialized from directory {}", Application::title, cwd );
    } else {
        console->info( "Application {} is already initialized", Application::title );
    }
}


#endif //OPENWORLD_APPLICATION_H
