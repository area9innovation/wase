(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (func (;0;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.eq
    if (result i32)  ;; label = @1
      local.get 0
      call 1
    else
      i32.const 0
    end)
  (func (;1;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.le_s
    if (result i32)  ;; label = @1
      i32.const 0
    else
      local.get 0
      i32.const 1
      i32.sub
      call 0
    end)
  (func (;2;) (type 1)
    i32.const 1
    call 0
    drop)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 2)))
