(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func))
  (import "wasi_snapshot_preview1" "fd_write" (func (;0;) (type 0)))
  (func (;1;) (type 1) (param i32)
    block  ;; label = @1
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
      drop
      block  ;; label = @2
      end
    end)
  (func (;2;) (type 1) (param i32)
    block  ;; label = @1
      local.get 0
      i32.const 10
      i32.lt_u
      if  ;; label = @2
        block  ;; label = @3
          i32.const 48
          local.get 0
          i32.add
          call 1
        end
      else
        block  ;; label = @3
          local.get 0
          i32.const 10
          i32.div_u
          call 2
          local.get 0
          i32.const 10
          i32.rem_u
          call 2
        end
      end
    end)
  (func (;3;) (type 1) (param i32)
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        block  ;; label = @3
          i32.const 45
          call 1
          i32.const 0
          local.get 0
          i32.sub
          call 2
        end
      else
        block  ;; label = @3
          local.get 0
          call 2
        end
      end
    end)
  (func (;4;) (type 1) (param i32)
    block  ;; label = @1
      local.get 0
      i32.const 10
      i32.lt_s
      if  ;; label = @2
        block  ;; label = @3
          i32.const 48
          local.get 0
          i32.add
          call 1
        end
      else
        local.get 0
        i32.const 16
        i32.lt_s
        if  ;; label = @3
          block  ;; label = @4
            i32.const 55
            local.get 0
            i32.add
            call 1
          end
        else
          block  ;; label = @4
            local.get 0
            i32.const 16
            i32.div_u
            call 4
            local.get 0
            i32.const 15
            i32.and
            call 4
          end
        end
      end
    end)
  (func (;5;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 42
    end)
  (func (;6;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 666
    end)
  (func (;7;) (type 3) (param i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.const 1
      i32.add
    end)
  (func (;8;) (type 3) (param i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.const 1
      i32.sub
    end)
  (func (;9;) (type 4)
    (local i32)
    block  ;; label = @1
      i32.const 0
      call_indirect (type 2)
      call 3
      i32.const 10
      call 1
      i32.const 1
      call_indirect (type 2)
      call 3
      i32.const 10
      call 1
      i32.const 41
      i32.const 2
      call_indirect (type 3)
      call 3
      i32.const 10
      call 1
      i32.const 43
      i32.const 3
      call_indirect (type 3)
      call 3
      i32.const 10
      call 1
      i32.const 1
      if (result i32)  ;; label = @2
        i32.const 0
      else
        i32.const 1
      end
      local.set 0
      block  ;; label = @2
        local.get 0
        call_indirect (type 2)
        call 3
        i32.const 10
        call 1
      end
    end)
  (table (;0;) 4 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_start" (func 9))
  (elem (;0;) (i32.const 0) func 6 5 7 8))
