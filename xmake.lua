set_project("pincpp")

target("pincpp")
    set_kind("static")
    add_includedirs("src", {public=true})
    add_files("src/pin/**.cpp", "src/pin/**.ixx")