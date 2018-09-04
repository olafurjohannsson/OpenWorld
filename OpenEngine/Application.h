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

class Application {
public:
    static void init() {
        static bool initialized = false;
        static Application application;
        if ( !initialized ) {
            console = spdlog::stdout_color_mt( "console" );
            file = spdlog::basic_logger_mt( "file", "/home/olafurj/Dropbox/dev/OpenWorld/logs/log.txt" );

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
            initialized = true;
            console->info( "Application initialized" );
        }
    }

    static constexpr char title[] = "OpenWorld";
    static std::shared_ptr<spdlog::logger> console;
    static std::shared_ptr<spdlog::logger> file;
};

std::shared_ptr<spdlog::logger> Application::console = nullptr;
std::shared_ptr<spdlog::logger> Application::file = nullptr;
constexpr char Application::title[]; // definition and declaration have to be provided

#endif //OPENWORLD_APPLICATION_H
