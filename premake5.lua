-- premake5.lua
workspace "PremakeTemplate"
    configurations { "Debug", "Release" }

project "HelloWorld"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/HelloWorld/%{cfg.buildcfg}"

    files {"src/**.hpp", "src/**.cpp"}

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "RELEASE" }
        optimize "On"