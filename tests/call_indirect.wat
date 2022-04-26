(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param v128)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func))
  (import "wasi_snapshot_preview1" "fd_write" (func (;0;) (type 0)))
  (func (;1;) (type 1) (param i32)
    i32.const 0
    i32.const 12
    i32.store
    i32.const 4
    i32.const 1
    i32.store
    i32.const 12
    local.get 0
    i32.store
    i32.const 1
    i32.const 0
    i32.const 1
    i32.const 8
    call 0
    drop)
  (func (;2;) (type 1) (param i32)
    local.get 0
    i32.const 10
    i32.lt_u
    if  ;; label = @1
      i32.const 48
      local.get 0
      i32.add
      call 1
    else
      local.get 0
      i32.const 10
      i32.div_u
      call 2
      local.get 0
      i32.const 10
      i32.rem_u
      call 2
    end)
  (func (;3;) (type 1) (param i32)
    local.get 0
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 45
      call 1
      i32.const 0
      local.get 0
      i32.sub
      call 2
    else
      local.get 0
      call 2
    end)
  (func (;4;) (type 1) (param i32)
    local.get 0
    i32.const 10
    i32.lt_s
    if  ;; label = @1
      i32.const 48
      local.get 0
      i32.add
      call 1
    else
      local.get 0
      i32.const 16
      i32.lt_s
      if  ;; label = @2
        i32.const 55
        local.get 0
        i32.add
        call 1
      else
        local.get 0
        i32.const 16
        i32.div_u
        call 4
        local.get 0
        i32.const 15
        i32.and
        call 4
      end
    end)
  (func (;5;) (type 2) (param v128)
    i32.const 0
    i32.const 12
    i32.store
    i32.const 4
    i32.const 16
    i32.store
    i32.const 12
    local.get 0
    v128.store
    i32.const 1
    i32.const 0
    i32.const 1
    i32.const 8
    call 0
    drop)
  (func (;6;) (type 3) (result i32)
    i32.const 42)
  (func (;7;) (type 3) (result i32)
    i32.const 666)
  (func (;8;) (type 4) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func (;9;) (type 4) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.sub)
  (func (;10;) (type 5)
    (local i32)
    i32.const 0
    call_indirect (type 3)
    call 3
    i32.const 10
    call 1
    i32.const 1
    call_indirect (type 3)
    call 3
    i32.const 10
    call 1
    i32.const 41
    i32.const 2
    call_indirect (type 4)
    call 3
    i32.const 10
    call 1
    i32.const 43
    i32.const 3
    call_indirect (type 4)
    call 3
    i32.const 10
    call 1
    i32.const 1
    if (result i32)  ;; label = @1
      i32.const 0
    else
      i32.const 1
    end
    local.set 0
    local.get 0
    call_indirect (type 3)
    call 3
    i32.const 10
    call 1)
  (table (;0;) 4 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 10))
  (elem (;0;) (i32.const 0) func 7 6 8 9))
