(module
  (type (;0;) (func))
  (func (;0;) (type 0)
    (local i32)
    i32.const 0
    local.set 0
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 10
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 0
        i32.const 4
        i32.eq
        if (result i32)  ;; label = @3
          br 1 (;@2;)
        else
          i32.const 1
        end
        drop
        local.get 0
        i32.const 8
        i32.eq
        if  ;; label = @3
          br 2 (;@1;)
        end
        i32.const 2
        drop
        br 0 (;@2;)
      end
    end
    i32.const 2
    drop)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (start 0))
