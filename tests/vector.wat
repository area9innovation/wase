(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param v128)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param v128 i32 i32 i32 i32) (result v128)))
  (type (;6;) (func))
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
  (func (;7;) (type 2) (param i32)
    local.get 0
    i32.const -2147483648
    call 10)
  (func (;8;) (type 2) (param i32)
    local.get 0
    i32.const 32768
    call 10)
  (func (;9;) (type 2) (param i32)
    local.get 0
    i32.const 128
    call 10)
  (func (;10;) (type 4) (param i32 i32)
    (local i32 i32)
    local.get 0
    local.get 1
    i32.and
    i32.const 0
    i32.gt_s
    local.set 2
    i32.const 48
    local.get 2
    i32.add
    call 2
    local.get 1
    i32.const 1
    i32.shr_u
    local.set 3
    i32.const 0
    local.get 3
    i32.lt_s
    if  ;; label = @1
      local.get 0
      local.get 3
      call 10
    end)
  (func (;11;) (type 3) (param v128)
    local.get 0
    i32x4.extract_lane 0
    call 4
    i32.const 32
    call 2
    local.get 0
    i32x4.extract_lane 1
    call 4
    i32.const 32
    call 2
    local.get 0
    i32x4.extract_lane 2
    call 4
    i32.const 32
    call 2
    local.get 0
    i32x4.extract_lane 3
    call 4
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;12;) (type 5) (param v128 i32 i32 i32 i32) (result v128)
    local.get 0
    local.get 1
    i32x4.replace_lane 0
    local.get 2
    i32x4.replace_lane 1
    local.get 3
    i32x4.replace_lane 2
    local.get 4
    i32x4.replace_lane 3)
  (func (;13;) (type 3) (param v128)
    local.get 0
    i32x4.extract_lane 0
    call 7
    i32.const 32
    call 2
    local.get 0
    i32x4.extract_lane 1
    call 7
    i32.const 32
    call 2
    local.get 0
    i32x4.extract_lane 2
    call 7
    i32.const 32
    call 2
    local.get 0
    i32x4.extract_lane 3
    call 7
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;14;) (type 3) (param v128)
    local.get 0
    i16x8.extract_lane_u 0
    call 4
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 1
    call 4
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 2
    call 4
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 3
    call 4
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 4
    call 4
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 5
    call 4
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 6
    call 4
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 7
    call 4
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;15;) (type 3) (param v128)
    local.get 0
    i16x8.extract_lane_u 0
    call 3
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 1
    call 3
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 2
    call 3
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 3
    call 3
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 4
    call 3
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 5
    call 3
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 6
    call 3
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 7
    call 3
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;16;) (type 3) (param v128)
    local.get 0
    i16x8.extract_lane_u 0
    call 8
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 1
    call 8
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 2
    call 8
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 3
    call 8
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 4
    call 8
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 5
    call 8
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 6
    call 8
    i32.const 32
    call 2
    local.get 0
    i16x8.extract_lane_u 7
    call 8
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;17;) (type 3) (param v128)
    local.get 0
    i8x16.extract_lane_u 0
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 1
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 2
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 3
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 4
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 5
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 6
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 7
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 8
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 9
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 10
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 11
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 12
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 13
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 14
    call 4
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 15
    call 4
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;18;) (type 3) (param v128)
    local.get 0
    i8x16.extract_lane_u 0
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 1
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 2
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 3
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 4
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 5
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 6
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 7
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 8
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 9
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 10
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 11
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 12
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 13
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 14
    call 9
    i32.const 32
    call 2
    local.get 0
    i8x16.extract_lane_u 15
    call 9
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;19;) (type 6)
    (local i32)
    i32.const 33
    local.set 0
    loop  ;; label = @1
      local.get 0
      call 2
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
  (func (;20;) (type 6)
    (local v128)
    call 19
    i32.const 10
    call 2
    v128.const i32x4 0x24232221 0x28272625 0x2b2a2929 0x2f2e2d2c
    local.set 0
    local.get 0
    call 6
    i32.const 10
    call 2
    local.get 0
    call 17)
  (func (;21;) (type 6)
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
    call 11
    local.get 0
    local.get 1
    i32x4.mul
    call 11
    local.get 0
    local.get 2
    i32x4.add
    call 11
    local.get 0
    local.get 2
    i32x4.mul
    call 11
    local.get 1
    local.get 2
    i32x4.add
    call 11
    local.get 1
    local.get 2
    i32x4.mul
    call 11)
  (func (;22;) (type 6)
    (local i32 v128 v128 v128)
    i32.const 128
    local.set 0
    v128.const i32x4 0x00010000 0x00030002 0x00050004 0x00070006
    local.set 1
    local.get 1
    call 14
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
    call 14
    v128.const i32x4 0x00000005 0x00000006 0x00000007 0x00000008
    local.set 3
    local.get 3
    call 11
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
    call 4
    i32.const 32
    call 2
    i32.const 4
    local.get 0
    i32.add
    i32.load
    call 4
    i32.const 32
    call 2
    i32.const 8
    local.get 0
    i32.add
    i32.load
    call 4
    i32.const 32
    call 2
    i32.const 12
    local.get 0
    i32.add
    i32.load
    call 4
    i32.const 32
    call 2
    i32.const 10
    call 2)
  (func (;23;) (type 6)
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const 1
    i32.const 2
    i32.const 3
    i32.const 4
    call 12
    call 11
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const -1
    i32.const -2
    i32.const -3
    i32.const -4
    call 12
    call 11
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const 9999
    i32.const 8888
    i32.const 7777
    i32.const 6666
    call 12
    call 11
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const -9999
    i32.const -8888
    i32.const -7777
    i32.const -6666
    call 12
    call 11)
  (func (;24;) (type 6)
    call 20
    call 21
    call 22
    call 23)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "_start" (func 24)))
