project "zlibstatic"
--	uuid "23112391-0616-46AF-B0C2-5325E8530FBA"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"*.h",
		"*.c",
	}
	excludes
	{
		"zlib/gz*.h",
		"zlib/gz*.c",
		"zlib/minigzip.c",
	}
	
	includedirs
	{
		"%{wks.location}/Vendor/zlib"
	}