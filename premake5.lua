-- premake5.lua
workspace "PremakeTemplate"
    architecture "x64"
    configurations {"Debug", "Release", "Dist"}
    startproject "HelloWorld"

    filter "configurations:Debug"
       defines { "DEBUG" }
       runtime "Debug"
       optimize "Off"
       symbols "On"

   filter "configurations:Release"
       defines { "RELEASE" }
       runtime "Release"
       optimize "On"
       symbols "On"

    filter "configurations:Dist"
        defines { "DIST" }
        runtime "Release"
        optimize "Full"
        symbols "Off"

filter {}

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

-- {COPYFILE} is not properly translated in the msys2 shell i use
-- The space at the end is intented to simplify writing other files
-- Adjust the next lines to your need, in most cases, just replace "cp " with "{COPYFILE} "
CopyCommand = "cp "

include "HelloLib/HelloLib.lua"
include "HelloWorld/HelloWorld.lua"