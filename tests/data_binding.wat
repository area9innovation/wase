(module
  (type (;0;) (func))
  (func (;0;) (type 0)
    block  ;; label = @1
      i32.const 0
      drop
      i32.const 8
      drop
      i32.const 10
      drop
      i32.const 13
      drop
      block  ;; label = @2
      end
    end)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 0))
  (data (;0;) (i32.const 0) "\01\02hello")
  (data (;1;) (i32.const 8) "\01")
  (data (;2;) (i32.const 10) "\01\02")
  (data (;3;) (i32.const 13) "\01\02\03"))
