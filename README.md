# TouchVGShape

## Overview

TouchVGShape contains the following cross-platform libraries using C++ for vector drawing frameworks:

- geom: Math and geometry library.
- graph: 2D Graphics interface library using geom library.
- shape: 2D Shape library using geom and graph libraries.
- jsonstorage: A storage adapter using [rapidjson](https://github.com/Kanma/rapidjson)(a fast JSON parser/generator).

This is an open source LGPL 2.1 licensed project that is in active development. Contributors and sponsors are welcome.

## Build

* Build for **iOS** platform on Mac OS X.

  > Open ios/TouchVGShape.xcodeproj in Xcode, then build the library project.

* Build for **Android** platform on Mac, Linux or Windows.

  > Cd the 'android' folder of this project and type `./build.sh` to build with ndk-build. MinGW and MSYS are recommend on Windows.
  >
  > The library `libTouchVGShape.a` will be outputed to `android/touchvgshape/obj/local/armeabi`.
  
* Build for more platforms and targets

  > Cd the 'core' folder of this project and type `make` or `make all install` to generate libraries on Mac, Linux or Windows.
  > 
  > Type `make java`, `make python` or `make csharp` to generate libraries for another language applications using Java, Python or C#.
  > 
  > Type `make clean java.clean python.clean` to remove the program object files.
