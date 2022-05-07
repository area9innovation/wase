(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param v128)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i32)))
  (type (;8;) (func (param i32 i32 i32)))
  (type (;9;) (func))
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
  (func (;7;) (type 4) (result i32)
    global.get 0
    i32.load)
  (func (;8;) (type 2) (param i32)
    global.get 0
    local.get 0
    i32.store)
  (func (;9;) (type 5) (param i32) (result i32)
    local.get 0)
  (func (;10;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 4
    i32.add)
  (func (;11;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func (;12;) (type 6) (param i32 i32 i32 i32)
    local.get 0
    call 9
    local.get 1
    i32.store
    local.get 0
    call 10
    local.get 2
    i32.store
    local.get 0
    call 11
    local.get 3
    i32.store)
  (func (;13;) (type 5) (param i32) (result i32)
    local.get 0
    call 9
    i32.load)
  (func (;14;) (type 5) (param i32) (result i32)
    local.get 0
    call 10
    i32.load)
  (func (;15;) (type 5) (param i32) (result i32)
    local.get 0
    call 11
    i32.load)
  (func (;16;) (type 7) (param i32 i32)
    local.get 0
    call 9
    local.get 1
    i32.store)
  (func (;17;) (type 7) (param i32 i32)
    local.get 0
    call 10
    local.get 1
    i32.store)
  (func (;18;) (type 7) (param i32 i32)
    local.get 0
    call 11
    local.get 1
    i32.store)
  (func (;19;) (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 0
    i32.gt_s
    local.get 1
    i32.const 0
    i32.gt_s
    i32.and
    if (result i32)  ;; label = @1
      local.get 0
      call 15
      local.set 2
      local.get 0
      local.get 2
      i32.add
      global.get 1
      i32.add
      local.get 1
      i32.eq
      if (result i32)  ;; label = @2
        local.get 1
        call 13
        local.set 3
        local.get 0
        local.get 2
        global.get 1
        i32.add
        local.get 1
        call 15
        i32.add
        call 18
        local.get 0
        local.get 3
        call 16
        local.get 3
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 3
          local.get 0
          call 17
        end
        local.get 0
      else
        local.get 1
      end
    else
      local.get 1
    end)
  (func (;20;) (type 8) (param i32 i32 i32)
    local.get 0
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 0
      local.get 2
      call 16
    else
      local.get 2
      call 8
    end
    local.get 2
    local.get 0
    call 17
    local.get 1
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 1
      local.get 2
      call 17
    end
    local.get 2
    local.get 1
    call 16
    local.get 0
    local.get 2
    call 19
    local.get 1
    call 19
    drop)
  (func (;21;) (type 2) (param i32)
    (local i32 i32)
    local.get 0
    call 14
    local.set 1
    local.get 0
    call 13
    local.set 2
    local.get 1
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 1
      local.get 2
      call 16
    else
      local.get 2
      call 8
    end
    local.get 2
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 2
      local.get 1
      call 17
    end)
  (func (;22;) (type 7) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    call 15
    local.get 0
    i32.sub
    global.get 1
    i32.ge_s
    if  ;; label = @1
      local.get 1
      call 13
      local.set 2
      local.get 1
      call 14
      local.set 3
      local.get 1
      global.get 1
      i32.add
      local.get 0
      i32.add
      local.set 4
      local.get 4
      local.get 2
      local.get 3
      local.get 1
      call 15
      local.get 4
      local.get 1
      i32.sub
      i32.sub
      call 12
      local.get 3
      local.get 2
      local.get 4
      call 20
      local.get 1
      i32.const -1
      i32.const -1
      local.get 0
      call 12
    else
      local.get 1
      call 21
    end)
  (func (;23;) (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.const 0
    i32.le_s
    if (result i32)  ;; label = @1
      i32.const -1
    else
      local.get 1
      call 15
      local.get 0
      i32.ge_s
      if (result i32)  ;; label = @2
        local.get 0
        local.get 1
        call 22
        local.get 1
      else
        local.get 0
        local.get 1
        call 13
        call 23
      end
    end)
  (func (;24;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    i32.lt_s
    if  ;; label = @1
      local.get 1
      call 14
      local.get 1
      local.get 0
      call 20
    else
      local.get 1
      call 13
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        call 13
        call 24
      else
        local.get 1
        i32.const -1
        local.get 0
        call 20
      end
    end)
  (func (;25;) (type 4) (result i32)
    i32.const 256
    i32.const 1024
    i32.mul)
  (func (;26;) (type 4) (result i32)
    i32.const 65536
    memory.size
    i32.mul
    call 25
    i32.sub)
  (func (;27;) (type 4) (result i32)
    i32.const 65536
    memory.size
    i32.mul
    global.get 1
    i32.sub
    global.get 0
    i32.sub
    i32.const 4
    i32.sub
    call 25
    i32.sub)
  (func (;28;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 16
    i32.le_s
    if (result i32)  ;; label = @1
      call 26
      local.set 1
      local.get 1
      i32.load
      local.set 2
      local.get 2
      i32.load
      local.set 3
      local.get 1
      local.get 3
      i32.store
      local.get 2
    else
      local.get 0
      i32.const 3
      i32.add
      i32.const 4
      i32.const 4
      i32.mul
      i32.div_s
      call 7
      call 23
      local.set 4
      local.get 4
      i32.const 0
      i32.gt_s
      if (result i32)  ;; label = @2
        local.get 4
        global.get 1
        i32.add
      else
        i32.const -1
      end
    end)
  (func (;29;) (type 2) (param i32)
    (local i32 i32)
    call 26
    local.set 1
    local.get 0
    local.get 1
    i32.ge_s
    if  ;; label = @1
      local.get 1
      i32.load
      local.set 2
      local.get 0
      local.get 2
      i32.store
      local.get 1
      local.get 0
      i32.store
    else
      call 7
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 0
        call 8
        local.get 0
        i32.const -1
        call 16
        local.get 0
        i32.const -1
        call 17
      else
        local.get 0
        global.get 1
        i32.sub
        call 7
        call 24
      end
    end)
  (func (;30;) (type 7) (param i32 i32)
    (local i32)
    loop  ;; label = @1
      local.get 1
      i32.const 0
      i32.le_s
      br_if 1 (;@0;)
      local.get 1
      i32.const 16
      i32.eq
      if (result i32)  ;; label = @2
        i32.const 0
      else
        local.get 0
        i32.const 16
        i32.add
      end
      local.set 2
      local.get 0
      local.get 2
      i32.store
      local.get 1
      i32.const 16
      i32.sub
      local.set 1
      br 0 (;@1;)
    end)
  (func (;31;) (type 2) (param i32)
    local.get 0
    global.set 0
    i32.const 0
    if  ;; label = @1
      call 26
      call 5
      i32.const 10
      call 2
      call 25
      call 5
      i32.const 10
      call 2
      call 26
      call 25
      i32.add
      call 5
      i32.const 10
      call 2
    end
    call 26
    i32.const 4
    i32.add
    call 25
    i32.const 4
    i32.sub
    call 30
    call 26
    call 26
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    if  ;; label = @1
      call 27
      call 5
      i32.const 10
      call 2
    end
    global.get 0
    i32.const 4
    i32.add
    call 8
    call 7
    i32.const -1
    i32.const -1
    call 27
    call 12)
  (func (;32;) (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    call 13
    local.set 2
    local.get 0
    call 15
    local.get 1
    i32.add
    global.get 1
    i32.add
    local.set 3
    local.get 2
    i32.const 0
    i32.gt_s
    if (result i32)  ;; label = @1
      local.get 2
      local.get 3
      call 32
    else
      local.get 3
    end)
  (func (;33;) (type 4) (result i32)
    call 7
    i32.const 0
    call 32)
  (func (;34;) (type 4) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 15
    call 28
    local.set 0
    local.get 0
    call 29
    i32.const 15
    call 28
    local.set 1
    local.get 1
    call 29
    i32.const 4
    call 28
    local.set 2
    i32.const 256
    call 28
    local.set 3
    local.get 0
    local.get 1
    i32.eq
    local.get 2
    local.get 1
    i32.eq
    i32.and
    local.set 4
    local.get 3
    call 29
    i32.const 1048576
    call 28
    local.set 5
    local.get 0
    local.get 1
    i32.eq
    local.get 1
    local.get 2
    i32.eq
    local.get 3
    local.get 5
    i32.eq
    i32.and
    i32.and)
  (func (;35;) (type 9)
    i32.const 32
    call 31
    call 34
    call 4)
  (memory (;0;) 128)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) i32 (i32.const 12))
  (export "memory" (memory 0))
  (export "_start" (func 35)))
