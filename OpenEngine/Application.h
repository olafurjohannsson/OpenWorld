//
// Created by olafurj on 03/09/18.
//

#ifndef OPENWORLD_APPLICATION_H
#define OPENWORLD_APPLICATION_H



#define SPDLOG_TRACE_ON
#define SPDLOG_DEBUG_ON

#include <spdlog/spdlog.h>
#include <spdlog/sinks/stdout_color_sinks.h>
#include <spdlog/common.h>

class Application {
public:
    static void init() {
        static bool initialized = false;
        static Application application;
        if ( !initialized ) {
            console = spdlog::stdout_color_mt( "console" );

#ifdef RELEASE
            console->set_level( spdlog::level::warn );
#else
            console->set_level( spdlog::level::trace );
#endif
            initialized = true;
            SPDLOG_TRACE( Application::console, "Application initialized" );
        }
    }
    static constexpr char *title = "OpenWorld";
    static std::shared_ptr<spdlog::logger> console;
};

std::shared_ptr<spdlog::logger> Application::console = nullptr;


#endif //OPENWORLD_APPLICATION_H
