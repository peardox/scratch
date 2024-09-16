# == DO NEVER EDIT THE NEXT LINES for Raspberry Pi Pico VS Code Extension to work ==
if(WIN32)
    set(USERHOME $ENV{USERPROFILE})
else()
    set(USERHOME $ENV{HOME})
endif()
set(sdkVersion 2.0.0)
set(toolchainVersion 13_2_Rel1)
set(picotoolVersion 2.0.0)
set(picoVscode ${USERHOME}/.pico-sdk/cmake/pico-vscode.cmake)
if (EXISTS ${picoVscode})
    include(${picoVscode})
endif()
# ====================================================================================
# == DO NEVER EDIT THE NEXT LINES for Raspberry Pi Pico VS Code Extension to work ==
if(WIN32)
    set(USERHOME $ENV{USERPROFILE})
else()
    set(USERHOME $ENV{HOME})
endif()
set(sdkVersion 2.0.0)
set(toolchainVersion 13_2_Rel1)
set(picotoolVersion 2.0.0)
set(picoVscode ${USERHOME}/.pico-sdk/cmake/pico-vscode.cmake)
if (EXISTS ${picoVscode})
    include(${picoVscode})
endif()
# ====================================================================================
# ====================================================================================
# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)

# == DO NEVER EDIT THE NEXT LINES for Raspberry Pi Pico VS Code Extension to work ==
if(WIN32)
    set(USERHOME $ENV{USERPROFILE})
else()
    set(USERHOME $ENV{HOME})
endif()
set(sdkVersion 2.0.0)
set(toolchainVersion 13_2_Rel1)
set(picotoolVersion 2.0.0)
set(picoVscode ${USERHOME}/.pico-sdk/cmake/pico-vscode.cmake)
if (EXISTS ${picoVscode})
    include(${picoVscode})
	message(STATUS "Boo!!!!!!!!")
endif()
# ====================================================================================
set(PICO_BOARD pico_w CACHE STRING "Board type")


# Pull in PICO SDK (must be before project)
include(pico_sdk_import.cmake)

project(testproj C CXX ASM)
add_executable(
  testproj
  examples/pico_display/pico_display_demo.cpp
  examples/pico_display/image_data.cpp
)

# Pull in pico libraries that we need
target_link_libraries(testproj pico_stdlib hardware_spi hardware_pwm hardware_dma rgbled pico_display pico_graphics st7789)

# Initialize the SDK
pico_sdk_init()

#pico_find_compiler(PICO_COMPILER_LD ${PICO_GCC_TRIPLE}-ld)

include_directories(
  ${CMAKE_CURRENT_LIST_DIR}
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror")

add_subdirectory(common)
add_subdirectory(drivers/st7789)
add_subdirectory(drivers/rgbled)
add_subdirectory(libraries/bitmap_fonts)
add_subdirectory(libraries/hershey_fonts)
add_subdirectory(libraries/pico_graphics)
add_subdirectory(libraries/pico_display)

# Example Pico Pack projects
#add_subdirectory(examples/pico_display)

# create map/bin/hex file etc.
pico_add_extra_outputs(testproj)