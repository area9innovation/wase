(module
  (type (;0;) (func))
  (func (;0;) (type 0)
    (local i32)
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 10
      i32.gt_s
      br_if 1 (;@0;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      br 0 (;@1;)
    end)
  (start 0))
