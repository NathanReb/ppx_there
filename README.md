# ppx_there

OCaml PPX extension for on-steroid `__MODULE__`.

## Overview

`ppx_there` turns the `[%there]` extension points into the fully qualified path of the value in
which it's used.

For example, the following code in a `a.ml` file:
```ocaml
module B = struct
  let c = [%there]
end
```
Is expanded  into:
```ocaml
module B = struct
  let c = "A.B.c"
end
```
