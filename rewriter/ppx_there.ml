let name = "there"

let () =
  Ppxlib.Driver.register_transformation
    ~impl:Ppx_there_lib.expand_impl
    name
