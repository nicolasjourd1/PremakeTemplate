project "HelloWorld"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"

    files { "src/**.h", "src/**.hpp", "src/**.c", "src/**.cpp" }
    includedirs { "src", "../HelloLib/src" }
    links { "HelloLib" }

    targetdir ("../build/bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../build/obj/" .. OutputDir .. "/%{prj.name}")