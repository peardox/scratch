# A Pimoroni Pico Display Example



For SDK 2.0.0

Steps

1) Clone this repo
2) In VSCode Extension do to the bottom option (Pico Project)
3) Import Project
4) Navigate to this repo
5) Click Import
6) Open the CMakeLists.txt file 

Around line 34 you'll find...

`set(DEMOAPP "PICO_DISPLAY_2")`

Change the bit in quotes to one of...

"PICO_DISPLAY_1" to create the pico_display version

"PICO_DISPLAY_2 "to create the pico_display_2 version WITH TEXT + GRAPHICS

"PICO_DISPLAY_2_MANDELBROT" to create the pico_display version WITH FRACTAL

Note the pico_display version will work on a Pico Display 2.0 but not vice-versa. On a 2 the display will be smaller then needed (could be altered of course)