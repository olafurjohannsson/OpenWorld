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

#define APP_PATH "app.config"

class Application {
public:
    static void abort( const std::string &msg ) {
        console->critical( msg );
        exit( 0 );
    }

    static void init() {
        static bool initialized = false;
        static Application application;
        if ( !initialized ) {
            config = std::shared_ptr<libconfig::Config>( new libconfig::Config());
            try {
                config->readFile( APP_PATH );
            } catch ( const libconfig::FileIOException &fioex ) {
                console->error( "I/O error while reading file." );
                Application::abort( "Cannot continue app without configuration file!" );
            } catch ( const libconfig::ParseException &pex ) {
                console->error( "Parse error at {}:{} - {}", pex.getFile(), pex.getLine(), pex.getError());
                Application::abort( "Cannot continue app without configuration file!" );
            }

            // get log path
            std::string logPath = config->lookup( "log_path" );

            if ( !logPath.empty()) {
                file = spdlog::basic_logger_mt( "file", logPath );
            }

            console = spdlog::stdout_color_mt( "console" );

#ifdef RELEASE
            console->set_level( spdlog::level::warn );
            file->set_level( spdlog::level::warn );
#else
            console->set_level( spdlog::level::trace );
            try {
                file->set_level( spdlog::level::trace );
            } catch ( const spdlog::spdlog_ex &ex ) {
                std::cout << "Log init failed" << ex.what() << std::endl;
            }
#endif
            Application::title = config->lookup("title");

            initialized = true;
            console->info( "Application {} initialized", Application::title );
        }
    }

    static const char *title;
    static std::shared_ptr<spdlog::logger> console;
    static std::shared_ptr<spdlog::logger> file;
    static std::shared_ptr<libconfig::Config> config;
};
std::shared_ptr<libconfig::Config> Application::config = nullptr;
std::shared_ptr<spdlog::logger> Application::console = nullptr;
std::shared_ptr<spdlog::logger> Application::file = nullptr;
const char *Application::title = nullptr;

#endif //OPENWORLD_APPLICATION_H
