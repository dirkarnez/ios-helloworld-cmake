cmake_minimum_required(VERSION 2.8)

cmake_policy(SET CMP0015 NEW)
cmake_policy(SET CMP0016 NEW)

project(test)
set(NAME test)

file(GLOB headers *.h)
file(GLOB sources *.cpp)

set(CMAKE_OSX_SYSROOT iphoneos4.1)
set(CMAKE_OSX_ARCHITECTURES $(ARCHS_STANDARD_32_BIT))
set(CMAKE_CXX_FLAGS "-x objective-c++")
set(CMAKE_EXE_LINKER_FLAGS
    "-framework AudioToolbox -framework CoreGraphics -framework QuartzCore -framework UIKit"
)
link_directories(\${HOME}/\${SDKROOT}/lib)

set(MACOSX_BUNDLE_GUI_IDENTIFIER "com.mycompany.\${PRODUCT_NAME:identifier}")
set(APP_TYPE MACOSX_BUNDLE)

add_executable(${NAME}
    ${APP_TYPE}
    ${headers}
    ${sources}
)

target_link_libraries(${NAME}
    # other libraries to link
)

# code signing
set_target_properties(${NAME} PROPERTIES XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer: My Name")
