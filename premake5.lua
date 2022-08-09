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
        
    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
