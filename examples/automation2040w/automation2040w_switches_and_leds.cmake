set(OUTPUT_NAME automation2040w_switches_and_leds)
add_executable(${OUTPUT_NAME} automation2040w_switches_and_leds.cpp)

# Pull in pico libraries that we need
target_link_libraries(${OUTPUT_NAME}
    pico_stdlib
    automation
    )

# enable usb output
pico_enable_stdio_usb(${OUTPUT_NAME} 1)

# create map/bin/hex file etc.
pico_add_extra_outputs(${OUTPUT_NAME})
