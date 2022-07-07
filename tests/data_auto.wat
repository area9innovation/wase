(module
  (type (;0;) (func))
  (func (;0;) (type 0)
    i32.const 1
    drop
    i32.const 7
    drop
    i32.const 23
    drop
    i32.const 9
    drop)
  (memory (;0;) 1 2)
  (export "memory" (memory 0))
  (export "_start" (func 0))
  (data (;0;) (i32.const 1) "hello")
  (data (;1;) (i32.const 7) "\02")
  (data (;2;) (i32.const 23) "data1")
  (data (;3;) (i32.const 9) "data2, data2"))
