set(CMAKE_SYSTEM_NAME Windows)
#set(MSYS 1)
set(BUILD_SHARED_LIBS OFF)
set(LIBTYPE STATIC)
set(CMAKE_CXX_COMPILER_ID MSVC)
set(CMAKE_CXX_PLATFORM_ID Windows)
set(CMAKE_CXX_COMPILER_VERSION 19.26)
set(CMAKE_C_COMPILER_ID MSVC)
set(CMAKE_C_COMPILER_VERSION 19.26)
set(BASE /opt/msvc)
set(CMAKE_C_COMPILER ${BASE}/bin/x64/cl)
set(CMAKE_CXX_COMPILER ${BASE}/bin/x64/cl)
set(CMAKE_LINKER ${BASE}/bin/x64/link)

set(CMAKE_CXX_LINK_EXECUTABLE "${BASE}/bin/x64/link  <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_BUILD_TYPE Release CACHE STRING "Debug|Release|RelWithDebInfo|MinSizeRel")
set(CMAKE_CROSS_COMPILING ON) # Workaround for http://www.cmake.org/Bug/view.php?id=14075
#set(CMAKE_RC_COMPILE_OBJECT "<CMAKE_RC_COMPILER> -O coff <FLAGS> <DEFINES> -o <OBJECT> <SOURCE>") # Workaround for buggy windres rules