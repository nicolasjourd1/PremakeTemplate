# Premake Template
A C++ project template using premake. 

*The MIT licence is only used to simplify the use of the template, feel free to delete it*

## Prerequisites
[`premake`](https://premake.github.io/) and a C++ installation.
> Premake is a command line utility which reads a scripted definition of a software project and, most commonly, uses it 
> to generate project files for toolsets like Visual Studio, Xcode, or GNU Make.

Possibly `clang-format`. On VS Code, the C/C++ extension is sufficient.

## Getting started
Run `premake5 [action]`, the action depends on the toolset you use. You can then build and run the project. For example,

```console
foo@bar:~$ premake5 gmake2 && make config=release && build/bin/windows-x86_64/Release/HelloWorld/HelloWorld.exe 
Building configurations...
Running action 'gmake2'...
Done (37ms).
==== Building HelloLib (release) ====
HelloLib.cpp
Linking HelloLib
==== Building HelloWorld (release) ====
HelloWorld.cpp
Linking HelloWorld
Hello from HelloLib
```

## Adding dependencies
`lib` and `include` directories are for adding dependencies. Inside a project premake file add `libdirs { "../lib" }`
`\libdirs { "../include" }` and `links { "foo", "bar"}` to setup a dependency. The first two additions are not necessary
if the library is installed "globally".
