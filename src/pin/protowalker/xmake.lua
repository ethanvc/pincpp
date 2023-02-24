target("protowalker")
    set_kind("static")
    add_files("*.cpp", "*.ixx")
    add_packages("protobuf")