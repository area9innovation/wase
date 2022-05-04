(module
  (type (;0;) (func (result i64 i32 f64)))
  (type (;1;) (func (result i32 f64)))
  (type (;2;) (func))
  (func (;0;) (type 0) (result i64 i32 f64)
    i64.const 1
    i32.const 2
    f64.const 0x1.199999999999ap+0 (;=1.1;))
  (func (;1;) (type 1) (result i32 f64)
    i32.const 3
    f64.const 0x1.920c49ba5e354p+1 (;=3.141;))
  (func (;2;) (type 2)
    (local f64 i32 i64 f64 i32 i64 i64 f64 i32)
    call 0
    local.set 0
    local.set 1
    local.set 2
    i64.const 1
    i32.const 2
    f64.const 0x1.199999999999ap+0 (;=1.1;)
    local.set 3
    local.set 4
    local.set 5
    call 1
    i64.const 1
    local.set 6
    local.set 7
    local.set 8)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 2)))
