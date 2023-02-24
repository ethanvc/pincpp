set_project("pincpp")
set_languages("c++20")
add_rules("mode.release", "mode.debug")
add_requires("protobuf-cpp")

add_includedirs("src", {public = true})

target("pincpp")
    set_kind("static")
    add_files("src/pin/protowalker/*.cpp")
    add_packages("protobuf-cpp")

target("protowalker_test")
    set_kind("binary")
    add_files("src/pin/protowalker/test/*.cpp")
    add_packages("protobuf-cpp")
    add_deps("pincpp")
