(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param v128)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func))
  (import "wasi_snapshot_preview1" "args_get" (func (;0;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;1;) (type 1)))
  (func (;2;) (type 2) (param i32)
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
    call 1
    drop)
  (func (;3;) (type 2) (param i32)
    local.get 0
    i32.const 10
    i32.lt_u
    if  ;; label = @1
      i32.const 48
      local.get 0
      i32.add
      call 2
    else
      local.get 0
      i32.const 10
      i32.div_u
      call 3
      local.get 0
      i32.const 10
      i32.rem_u
      call 3
    end)
  (func (;4;) (type 2) (param i32)
    local.get 0
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 45
      call 2
      i32.const 0
      local.get 0
      i32.sub
      call 3
    else
      local.get 0
      call 3
    end)
  (func (;5;) (type 2) (param i32)
    local.get 0
    i32.const 10
    i32.lt_s
    if  ;; label = @1
      i32.const 48
      local.get 0
      i32.add
      call 2
    else
      local.get 0
      i32.const 16
      i32.lt_s
      if  ;; label = @2
        i32.const 55
        local.get 0
        i32.add
        call 2
      else
        local.get 0
        i32.const 16
        i32.div_u
        call 5
        local.get 0
        i32.const 15
        i32.and
        call 5
      end
    end)
  (func (;6;) (type 3) (param v128)
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
    call 1
    drop)
  (func (;7;) (type 4) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 4
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 12
    i32.sub
    i32.store)
  (func (;8;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 12
    i32.add
    local.set 2
    local.get 2
    i32.const 3
    i32.add
    i32.const 2
    i32.shr_u
    i32.const 2
    i32.shl
    local.set 3
    loop  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 4
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.set 5
      local.get 5
      local.get 3
      i32.ge_s
      if  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 5
        local.get 3
        i32.sub
        i32.store
        local.get 0
        local.get 5
        i32.add
        local.get 3
        i32.sub
        local.set 6
        local.get 6
        i32.const 8
        i32.add
        local.get 3
        i32.store
        local.get 6
        i32.const 12
        i32.add
        return
      else
        local.get 4
        i32.const 0
        i32.eq
        if  ;; label = @3
          i32.const 0
          return
        end
      end
      local.get 4
      local.set 0
      br 0 (;@1;)
    end
    i32.const 0)
  (func (;9;) (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.const 12
    i32.sub
    local.set 4
    local.get 2
    local.get 0
    i32.add
    local.get 4
    i32.eq
    if  ;; label = @1
      local.get 4
      i32.const 8
      i32.add
      i32.load
      i32.const 12
      i32.add
      local.set 5
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      local.get 5
      i32.add
      i32.store
    else
      local.get 4
      local.get 0
      i32.store
      local.get 4
      i32.const 4
      i32.add
      local.get 3
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 4
      i32.store
    end)
  (func (;10;) (type 2) (param i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 3
    local.get 0
    call 5
    i32.const 58
    call 2
    local.get 1
    call 5
    i32.const 58
    call 2
    local.get 2
    call 5
    i32.const 58
    call 2
    local.get 3
    call 5
    i32.const 10
    call 2
    local.get 2
    i32.const 0
    i32.ne
    if  ;; label = @1
      local.get 2
      call 10
    end)
  (func (;11;) (type 2) (param i32)
    local.get 0
    call 5
    i32.const 58
    call 2
    local.get 0
    i32.const 4
    i32.sub
    i32.load
    call 5)
  (func (;12;) (type 5)
    (local i32 i32 i32 i32)
    i32.const 32
    local.set 0
    local.get 0
    i32.const 128
    call 7
    local.get 0
    call 10
    local.get 0
    i32.const 4
    call 8
    local.set 1
    local.get 0
    i32.const 4
    call 8
    local.set 2
    local.get 0
    i32.const 4
    call 8
    local.set 3
    local.get 1
    call 11
    i32.const 10
    call 2
    local.get 2
    call 11
    i32.const 10
    call 2
    local.get 3
    call 11
    i32.const 10
    call 2
    local.get 0
    call 10
    local.get 0
    local.get 3
    call 9
    local.get 0
    call 10)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 12)))
