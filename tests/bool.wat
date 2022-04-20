(module
  (type (;0;) (func))
  (func (;0;) (type 0)
    i32.const 1
    if (result i32)  ;; label = @1
      i32.const 1
    else
      i32.const 0
    end
    drop
    i32.const 0
    if (result i32)  ;; label = @1
      i32.const 1
    else
      i32.const 0
    end
    drop)
  (global (;0;) f64 (f64.const 0x1.921fb54442d1ap+1 (;=3.14159;)))
  (start 0))
