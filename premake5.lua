project "box2d"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "off"

    targetdir 	("%{wks.location}/bin/%{prj.name}/" .. outputDir)
    objdir 		("%{wks.location}/obj/%{prj.name}/" .. outputDir)

    includedirs "include"

	files
	{
		"include/box2d/**.h",
		"src/**.h",
		"src/**.cpp"
	}

    filter "system:windows"
        systemversion "latest"
		
	filter "system:linux"
		pic "On"
		systemversion "latest"
        
    filter "configurations:x64d"
		runtime "Debug"
		symbols "on"

	filter "configurations:ARMd"
		runtime "Debug"
		symbols "on"

	filter "configurations:ARM64d"
		runtime "Debug"
		symbols "on"

	filter "configurations:x64"
		runtime "Release"
		optimize "on"

	filter "configurations:ARM"
		runtime "Release"
		optimize "on"

	filter "configurations:ARM64"
		runtime "Release"
		optimize "on"
