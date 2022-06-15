(module
  (type (;0;) (func))
  (func (;0;) (type 0)
    i32.const 32
    drop
    i32.const 64
    drop
    i32.const 4
    drop)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 0))
  (data (;0;) (i32.const 32) "foo")
  (data (;1;) (i32.const 64) "bar"))
