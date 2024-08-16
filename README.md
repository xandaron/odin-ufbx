# `ufbx` Bindings for Odin

- `/ufbx` contains all you need to get going, simply copy it into your project and import 
- `/deps` contains the C source files used to build `ufbx.lib`, `ufbx.a` and their license
- `/example` contains a simple example of using the API from Odin

## Running the Example

From this directory, simply run `odin run example`. You should see a spinning Suzanne head.

## Compiling `ufbx.c`

### Windows
`ufbx.lib` can be compiled using build.bat

Alternatively run the following from VS developer console:
```PowerShell
clang -c deps/ufbx.c -o deps/ufbx.obj -target x86_64-pc-windows-msvc -O3
lib /OUT:ufbx/ufbx.lib deps/ufbx.obj
rm deps/ufbx.obj
```

Both methods assume you have a VS developer console installed.

### Linux
`ufbx.a` can be compile using build.sh

Alternatively run the following from console:
```Shell
gcc -c deps/ufbx.c
ar r ufbx/ufbx.a deps/ufbx.o
rm deps/ufbx.o
```