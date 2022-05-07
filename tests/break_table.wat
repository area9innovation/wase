(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param v128)))
  (type (;4;) (func))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32) (result i32)))
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
  (func (;7;) (type 4)
    i32.const 1
    br_table 0 (;@0;))
  (func (;8;) (type 5) (result i32)
    i32.const 42
    i32.const 1
    br_table 0 (;@0;))
  (func (;9;) (type 6) (param i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;) 3 (;@1;)
          end
          i32.const 100
          return
        end
        i32.const 101
        return
      end
      i32.const 102
      return
    end
    i32.const 103)
  (func (;10;) (type 4)
    call 7
    call 8
    call 4
    i32.const 10
    call 2
    i32.const 0
    call 9
    call 4
    i32.const 10
    call 2
    i32.const 1
    call 9
    call 4
    i32.const 10
    call 2
    i32.const 2
    call 9
    call 4
    i32.const 10
    call 2
    i32.const 3
    call 9
    call 4
    i32.const 10
    call 2
    i32.const 4
    call 9
    call 4
    i32.const 10
    call 2
    i32.const 5
    call 9
    call 4
    i32.const 10
    call 2)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 10)))
