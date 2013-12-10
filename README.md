# TouchVGShape - Cross-platform libraries for TouchVG framework.

## Overview

TouchVGShape contains multiple cross-platform libraries for TouchVG framework.

This is an open source LGPL 2.1 licensed project that is in active development. Contributors and sponsors welcome.

## Build

* Build for **iOS** platform on Mac OS X.

  > Open ios/TouchVGShape.xcodeproj in Xcode, then build the library project.

* Build for **Android** platform on Mac, Linux or Windows.

  > Cd the 'android' folder of this project and type `./build.sh` to build with ndk-build. MinGW and MSYS are recommend on Windows.
  >
  > The library `libTouchVGShape.a` will be outputed to `android/touchvgshape/obj/local/armeabi`.
  
* Build for more platform and targets

  > Cd the 'core' folder of this project and type `make` or `make all install` to generate libraries on Mac, Linux or Windows.
  > 
  > Type `make java` or `make python` to generate libraries for another language applications.
  > 
  > Type `make clean java.clean python.clean` to remove the program object files.
