set_project("pincpp")
set_languages("c++20")

add_requires("protobuf-cpp")

target("pincpp")
    set_kind("static")
    add_includedirs("src", {public=true})
    add_files("src/pin/protowalker/*.cpp", "src/pin/protowalker/*.ixx")
    add_packages("protobuf-cpp")

target("protowalker_test")
    set_kind("binary")
    -- add_defines("USE_MODULES")
    add_files("src/pin/protowalker/test/*.cpp", "src/pin/protowalker/test/*.ixx")
    add_packages("protobuf-cpp")
    -- add_deps("pincpp")
