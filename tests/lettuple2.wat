(module
  (type (;0;) (func (result i32 f64)))
  (type (;1;) (func))
  (func (;0;) (type 0) (result i32 f64)
    i32.const 0
    f64.const 0x1.199999999999ap+0 (;=1.1;))
  (func (;1;) (type 1)
    (local f64 i32 f64 i32 f64 i32)
    call 0
    local.set 0
    local.set 1
    i32.const 1
    f64.const 0x1.91eb851eb851fp+1 (;=3.14;)
    local.set 2
    local.set 3
    i32.const 2
    f64.const 0x1.199999999999ap+1 (;=2.2;)
    local.set 4
    local.set 5)
  (memory (;0;) 1)
  (export "memory" (memory 0)))
