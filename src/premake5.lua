project "libmysofa"
    kind "StaticLib"
    language "C"
    cdialect "C99"
    rtti "Off"
    exceptionhandling "Off"
    staticruntime "Off"
    targetdir "../bin/%{cfg.buildcfg}"
    links "zlib-lib"
    includedirs {
        "hrtf",
        "resampler",
        "hdf",
        "./",
        "../../zlib"
    }

    files { 
        "hrtf/reader.c",
        "hdf/superblock.c",
        "hdf/dataobject.c",
        "hdf/btree.c",
        "hdf/fractalhead.c",
        "hdf/gunzip.c",
        "hdf/gcol.c",
        "hrtf/check.c",
        "hrtf/spherical.c",
        "hrtf/lookup.c",
        "hrtf/tools.c",
        "hrtf/kdtree.c",
        "hrtf/neighbors.c",
        "hrtf/interpolate.c",
        "hrtf/resample.c",
        "hrtf/loudness.c",
        "hrtf/minphase.c",
        "hrtf/easy.c",
        "hrtf/cache.c",
        "resampler/speex_resampler.c"
    }
        
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"