(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param v128)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32)))
  (type (;9;) (func))
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
    global.get 0
    i32.load)
  (func (;7;) (type 1) (param i32)
    global.get 0
    local.get 0
    i32.store)
  (func (;8;) (type 4) (param i32) (result i32)
    local.get 0)
  (func (;9;) (type 4) (param i32) (result i32)
    local.get 0
    i32.const 4
    i32.add)
  (func (;10;) (type 4) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func (;11;) (type 5) (param i32 i32 i32 i32)
    local.get 0
    call 8
    local.get 1
    i32.store
    local.get 0
    call 9
    local.get 2
    i32.store
    local.get 0
    call 10
    local.get 3
    i32.store)
  (func (;12;) (type 4) (param i32) (result i32)
    local.get 0
    call 8
    i32.load)
  (func (;13;) (type 4) (param i32) (result i32)
    local.get 0
    call 9
    i32.load)
  (func (;14;) (type 4) (param i32) (result i32)
    local.get 0
    call 10
    i32.load)
  (func (;15;) (type 6) (param i32 i32)
    local.get 0
    call 8
    local.get 1
    i32.store)
  (func (;16;) (type 6) (param i32 i32)
    local.get 0
    call 9
    local.get 1
    i32.store)
  (func (;17;) (type 6) (param i32 i32)
    local.get 0
    call 10
    local.get 1
    i32.store)
  (func (;18;) (type 7) (param i32 i32) (result i32)
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
      call 14
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
        call 12
        local.set 3
        local.get 0
        local.get 2
        global.get 1
        i32.add
        local.get 1
        call 14
        i32.add
        call 17
        local.get 0
        local.get 3
        call 15
        local.get 3
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 3
          local.get 0
          call 16
        end
        local.get 0
      else
        local.get 1
      end
    else
      local.get 1
    end)
  (func (;19;) (type 8) (param i32 i32 i32)
    local.get 0
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 0
      local.get 2
      call 15
    else
      local.get 2
      call 7
    end
    local.get 2
    local.get 0
    call 16
    local.get 1
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 1
      local.get 2
      call 16
    end
    local.get 2
    local.get 1
    call 15
    local.get 0
    local.get 2
    call 18
    local.get 1
    call 18
    drop)
  (func (;20;) (type 1) (param i32)
    (local i32 i32)
    local.get 0
    call 13
    local.set 1
    local.get 0
    call 12
    local.set 2
    local.get 1
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 1
      local.get 2
      call 15
    else
      local.get 2
      call 7
    end
    local.get 2
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 2
      local.get 1
      call 16
    end)
  (func (;21;) (type 6) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    call 14
    local.get 0
    i32.sub
    global.get 1
    i32.ge_s
    if  ;; label = @1
      local.get 1
      call 12
      local.set 2
      local.get 1
      call 13
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
      call 14
      local.get 4
      local.get 1
      i32.sub
      i32.sub
      call 11
      local.get 3
      local.get 2
      local.get 4
      call 19
      local.get 1
      i32.const -1
      i32.const -1
      local.get 0
      call 11
    else
      local.get 1
      call 20
    end)
  (func (;22;) (type 7) (param i32 i32) (result i32)
    local.get 1
    i32.const 0
    i32.le_s
    if (result i32)  ;; label = @1
      i32.const -1
    else
      local.get 1
      call 14
      local.get 0
      i32.ge_s
      if (result i32)  ;; label = @2
        local.get 0
        local.get 1
        call 21
        local.get 1
      else
        local.get 0
        local.get 1
        call 12
        call 22
      end
    end)
  (func (;23;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    i32.lt_s
    if  ;; label = @1
      local.get 1
      call 13
      local.get 1
      local.get 0
      call 19
    else
      local.get 1
      call 12
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        call 12
        call 23
      else
        local.get 1
        i32.const -1
        local.get 0
        call 19
      end
    end)
  (func (;24;) (type 3) (result i32)
    i32.const 256
    i32.const 1024
    i32.mul)
  (func (;25;) (type 3) (result i32)
    i32.const 65536
    memory.size
    i32.mul
    call 24
    i32.sub)
  (func (;26;) (type 3) (result i32)
    i32.const 65536
    memory.size
    i32.mul
    global.get 1
    i32.sub
    global.get 0
    i32.sub
    i32.const 4
    i32.sub
    call 24
    i32.sub)
  (func (;27;) (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 16
    i32.le_s
    if (result i32)  ;; label = @1
      call 25
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
      call 6
      call 22
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
  (func (;28;) (type 1) (param i32)
    (local i32 i32)
    call 25
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
      call 6
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 0
        call 7
        local.get 0
        i32.const -1
        call 15
        local.get 0
        i32.const -1
        call 16
      else
        local.get 0
        global.get 1
        i32.sub
        call 6
        call 23
      end
    end)
  (func (;29;) (type 6) (param i32 i32)
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
  (func (;30;) (type 1) (param i32)
    local.get 0
    global.set 0
    i32.const 0
    if  ;; label = @1
      call 25
      call 4
      i32.const 10
      call 1
      call 24
      call 4
      i32.const 10
      call 1
      call 25
      call 24
      i32.add
      call 4
      i32.const 10
      call 1
    end
    call 25
    i32.const 4
    i32.add
    call 24
    i32.const 4
    i32.sub
    call 29
    call 25
    call 25
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    if  ;; label = @1
      call 26
      call 4
      i32.const 10
      call 1
    end
    global.get 0
    i32.const 4
    i32.add
    call 7
    call 6
    i32.const -1
    i32.const -1
    call 26
    call 11)
  (func (;31;) (type 7) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    call 12
    local.set 2
    local.get 0
    call 14
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
      call 31
    else
      local.get 3
    end)
  (func (;32;) (type 3) (result i32)
    call 6
    i32.const 0
    call 31)
  (func (;33;) (type 3) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 15
    call 27
    local.set 0
    local.get 0
    call 28
    i32.const 15
    call 27
    local.set 1
    local.get 1
    call 28
    i32.const 4
    call 27
    local.set 2
    i32.const 256
    call 27
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
    call 28
    i32.const 1048576
    call 27
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
  (func (;34;) (type 9)
    i32.const 32
    call 30
    call 33
    call 3)
  (memory (;0;) 128)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) i32 (i32.const 12))
  (export "memory" (memory 0))
  (export "_start" (func 34)))
