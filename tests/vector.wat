(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param v128)))
  (type (;3;) (func))
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
  (func (;6;) (type 2) (param v128)
    local.get 0
    i32x4.extract_lane 0
    call 3
    i32.const 32
    call 1
    local.get 0
    i32x4.extract_lane 1
    call 3
    i32.const 32
    call 1
    local.get 0
    i32x4.extract_lane 2
    call 3
    i32.const 32
    call 1
    local.get 0
    i32x4.extract_lane 3
    call 3
    i32.const 32
    call 1
    i32.const 10
    call 1)
  (func (;7;) (type 2) (param v128)
    local.get 0
    i16x8.extract_lane_u 0
    call 3
    i32.const 32
    call 1
    local.get 0
    i16x8.extract_lane_u 1
    call 3
    i32.const 32
    call 1
    local.get 0
    i16x8.extract_lane_u 2
    call 3
    i32.const 32
    call 1
    local.get 0
    i16x8.extract_lane_u 3
    call 3
    i32.const 32
    call 1
    local.get 0
    i16x8.extract_lane_u 4
    call 3
    i32.const 32
    call 1
    local.get 0
    i16x8.extract_lane_u 5
    call 3
    i32.const 32
    call 1
    local.get 0
    i16x8.extract_lane_u 6
    call 3
    i32.const 32
    call 1
    local.get 0
    i16x8.extract_lane_u 7
    call 3
    i32.const 32
    call 1
    i32.const 10
    call 1)
  (func (;8;) (type 2) (param v128)
    local.get 0
    i8x16.extract_lane_u 0
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 1
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 2
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 3
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 4
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 5
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 6
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 7
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 8
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 9
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 10
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 11
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 12
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 13
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 14
    call 3
    i32.const 32
    call 1
    local.get 0
    i8x16.extract_lane_u 15
    call 3
    i32.const 32
    call 1
    i32.const 10
    call 1)
  (func (;9;) (type 3)
    (local i32)
    i32.const 33
    local.set 0
    loop  ;; label = @1
      local.get 0
      call 1
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 0
      i32.const 47
      i32.gt_s
      br_if 1 (;@0;)
      br 0 (;@1;)
    end)
  (func (;10;) (type 3)
    (local v128 v128)
    call 9
    i32.const 10
    call 1
    v128.const i32x4 0x24232221 0x28272625 0x2b2a2929 0x2f2e2d2c
    local.set 0
    local.get 0
    call 5
    i32.const 10
    call 1
    local.get 0
    call 8
    v128.const i32x4 0x22232221 0x26272625 0x2a2b2a29 0x2e2f2e2d
    local.set 1
    local.get 1
    call 5
    i32.const 10
    call 1
    local.get 1
    call 6)
  (func (;11;) (type 3)
    (local v128 v128 v128)
    v128.const i32x4 0x00000000 0x00000001 0x00000002 0x00000003
    local.set 0
    v128.const i32x4 0x00000001 0x00000002 0x00000004 0x00000008
    local.set 1
    v128.const i32x4 0x00000005 0x00000006 0x00000007 0x00000008
    local.set 2
    local.get 0
    local.get 1
    i32x4.add
    call 6
    local.get 0
    local.get 1
    i32x4.mul
    call 6
    local.get 0
    local.get 2
    i32x4.add
    call 6
    local.get 0
    local.get 2
    i32x4.mul
    call 6
    local.get 1
    local.get 2
    i32x4.add
    call 6
    local.get 1
    local.get 2
    i32x4.mul
    call 6)
  (func (;12;) (type 3)
    (local i32 v128 v128 v128)
    i32.const 128
    local.set 0
    v128.const i32x4 0x00010000 0x00030002 0x00050004 0x00070006
    local.set 1
    local.get 1
    call 7
    i32.const 0
    local.get 0
    i32.add
    local.get 1
    v128.store
    i32.const 0
    local.get 0
    i32.add
    v128.load
    local.set 2
    local.get 2
    call 7
    v128.const i32x4 0x00000005 0x00000006 0x00000007 0x00000008
    local.set 3
    local.get 3
    call 6
    i32.const 0
    local.get 0
    i32.add
    local.get 3
    v128.store32_lane 0
    i32.const 4
    local.get 0
    i32.add
    local.get 3
    v128.store32_lane 1
    i32.const 8
    local.get 0
    i32.add
    local.get 3
    v128.store32_lane 2
    i32.const 12
    local.get 0
    i32.add
    local.get 3
    v128.store32_lane 3
    i32.const 0
    local.get 0
    i32.add
    i32.load
    call 3
    i32.const 32
    call 1
    i32.const 4
    local.get 0
    i32.add
    i32.load
    call 3
    i32.const 32
    call 1
    i32.const 8
    local.get 0
    i32.add
    i32.load
    call 3
    i32.const 32
    call 1
    i32.const 12
    local.get 0
    i32.add
    i32.load
    call 3
    i32.const 32
    call 1
    i32.const 10
    call 1)
  (func (;13;) (type 3)
    call 10
    call 11
    call 12)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "_start" (func 13)))
