(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i64 i64 i32) (result i32)))
  (type (;2;) (func (param i64 i64 i32) (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i64 i32) (result i32)))
  (type (;5;) (func (param i32 i64 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i64 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i64 i64 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i64 i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i64 i32) (result i32)))
  (type (;15;) (func (result i32)))
  (type (;16;) (func (param i32)))
  (type (;17;) (func (param v128)))
  (type (;18;) (func (param i32 i32)))
  (type (;19;) (func (param v128 i32 i32 i32 i32) (result v128)))
  (type (;20;) (func))
  (import "wasi_snapshot_preview1" "args_get" (func (;0;) (type 0)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func (;1;) (type 0)))
  (import "wasi_snapshot_preview1" "environ_get" (func (;2;) (type 0)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func (;3;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_advise" (func (;4;) (type 1)))
  (import "wasi_snapshot_preview1" "fd_allocate" (func (;5;) (type 2)))
  (import "wasi_snapshot_preview1" "fd_close" (func (;6;) (type 3)))
  (import "wasi_snapshot_preview1" "fd_datasync" (func (;7;) (type 3)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func (;8;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_fdstat_set_flags" (func (;9;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_fdstat_set_rights" (func (;10;) (type 2)))
  (import "wasi_snapshot_preview1" "fd_filestat_get" (func (;11;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_filestat_set_size" (func (;12;) (type 4)))
  (import "wasi_snapshot_preview1" "fd_filestat_set_times" (func (;13;) (type 1)))
  (import "wasi_snapshot_preview1" "fd_pread" (func (;14;) (type 5)))
  (import "wasi_snapshot_preview1" "fd_prestat_get" (func (;15;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_prestat_dir_name" (func (;16;) (type 6)))
  (import "wasi_snapshot_preview1" "fd_pwrite" (func (;17;) (type 5)))
  (import "wasi_snapshot_preview1" "fd_read" (func (;18;) (type 7)))
  (import "wasi_snapshot_preview1" "fd_readdir" (func (;19;) (type 5)))
  (import "wasi_snapshot_preview1" "fd_renumber" (func (;20;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_seek" (func (;21;) (type 8)))
  (import "wasi_snapshot_preview1" "fd_sync" (func (;22;) (type 3)))
  (import "wasi_snapshot_preview1" "fd_tell" (func (;23;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;24;) (type 7)))
  (import "wasi_snapshot_preview1" "path_create_directory" (func (;25;) (type 6)))
  (import "wasi_snapshot_preview1" "path_filestat_get" (func (;26;) (type 9)))
  (import "wasi_snapshot_preview1" "path_filestat_set_times" (func (;27;) (type 10)))
  (import "wasi_snapshot_preview1" "path_link" (func (;28;) (type 11)))
  (import "wasi_snapshot_preview1" "path_open" (func (;29;) (type 12)))
  (import "wasi_snapshot_preview1" "path_readlink" (func (;30;) (type 13)))
  (import "wasi_snapshot_preview1" "path_remove_directory" (func (;31;) (type 6)))
  (import "wasi_snapshot_preview1" "path_rename" (func (;32;) (type 13)))
  (import "wasi_snapshot_preview1" "path_symlink" (func (;33;) (type 9)))
  (import "wasi_snapshot_preview1" "path_unlink_file" (func (;34;) (type 6)))
  (import "wasi_snapshot_preview1" "clock_res_get" (func (;35;) (type 0)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func (;36;) (type 14)))
  (import "wasi_snapshot_preview1" "sched_yield" (func (;37;) (type 15)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;38;) (type 16)))
  (import "wasi_snapshot_preview1" "proc_raise" (func (;39;) (type 3)))
  (import "wasi_snapshot_preview1" "poll_oneoff" (func (;40;) (type 7)))
  (import "wasi_snapshot_preview1" "random_get" (func (;41;) (type 0)))
  (import "wasi_snapshot_preview1" "sock_recv" (func (;42;) (type 13)))
  (import "wasi_snapshot_preview1" "sock_send" (func (;43;) (type 9)))
  (import "wasi_snapshot_preview1" "sock_shutdown" (func (;44;) (type 0)))
  (func (;45;) (type 16) (param i32)
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
    call 24
    drop)
  (func (;46;) (type 16) (param i32)
    local.get 0
    i32.const 10
    i32.lt_u
    if  ;; label = @1
      i32.const 48
      local.get 0
      i32.add
      call 45
    else
      local.get 0
      i32.const 10
      i32.div_u
      call 46
      local.get 0
      i32.const 10
      i32.rem_u
      call 46
    end)
  (func (;47;) (type 16) (param i32)
    local.get 0
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 45
      call 45
      i32.const 0
      local.get 0
      i32.sub
      call 46
    else
      local.get 0
      call 46
    end)
  (func (;48;) (type 16) (param i32)
    local.get 0
    i32.const 10
    i32.lt_s
    if  ;; label = @1
      i32.const 48
      local.get 0
      i32.add
      call 45
    else
      local.get 0
      i32.const 16
      i32.lt_s
      if  ;; label = @2
        i32.const 55
        local.get 0
        i32.add
        call 45
      else
        local.get 0
        i32.const 16
        i32.div_u
        call 48
        local.get 0
        i32.const 15
        i32.and
        call 48
      end
    end)
  (func (;49;) (type 17) (param v128)
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
    call 24
    drop)
  (func (;50;) (type 16) (param i32)
    local.get 0
    i32.const -2147483648
    call 53)
  (func (;51;) (type 16) (param i32)
    local.get 0
    i32.const 32768
    call 53)
  (func (;52;) (type 16) (param i32)
    local.get 0
    i32.const 128
    call 53)
  (func (;53;) (type 18) (param i32 i32)
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
    call 45
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
      call 53
    end)
  (func (;54;) (type 17) (param v128)
    local.get 0
    i32x4.extract_lane 0
    call 47
    i32.const 32
    call 45
    local.get 0
    i32x4.extract_lane 1
    call 47
    i32.const 32
    call 45
    local.get 0
    i32x4.extract_lane 2
    call 47
    i32.const 32
    call 45
    local.get 0
    i32x4.extract_lane 3
    call 47
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;55;) (type 19) (param v128 i32 i32 i32 i32) (result v128)
    local.get 0
    local.get 1
    i32x4.replace_lane 0
    local.get 2
    i32x4.replace_lane 1
    local.get 3
    i32x4.replace_lane 2
    local.get 4
    i32x4.replace_lane 3)
  (func (;56;) (type 17) (param v128)
    local.get 0
    i32x4.extract_lane 0
    call 50
    i32.const 32
    call 45
    local.get 0
    i32x4.extract_lane 1
    call 50
    i32.const 32
    call 45
    local.get 0
    i32x4.extract_lane 2
    call 50
    i32.const 32
    call 45
    local.get 0
    i32x4.extract_lane 3
    call 50
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;57;) (type 17) (param v128)
    local.get 0
    i16x8.extract_lane_u 0
    call 47
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 1
    call 47
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 2
    call 47
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 3
    call 47
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 4
    call 47
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 5
    call 47
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 6
    call 47
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 7
    call 47
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;58;) (type 17) (param v128)
    local.get 0
    i16x8.extract_lane_u 0
    call 46
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 1
    call 46
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 2
    call 46
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 3
    call 46
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 4
    call 46
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 5
    call 46
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 6
    call 46
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 7
    call 46
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;59;) (type 17) (param v128)
    local.get 0
    i16x8.extract_lane_u 0
    call 51
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 1
    call 51
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 2
    call 51
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 3
    call 51
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 4
    call 51
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 5
    call 51
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 6
    call 51
    i32.const 32
    call 45
    local.get 0
    i16x8.extract_lane_u 7
    call 51
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;60;) (type 17) (param v128)
    local.get 0
    i8x16.extract_lane_u 0
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 1
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 2
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 3
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 4
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 5
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 6
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 7
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 8
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 9
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 10
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 11
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 12
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 13
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 14
    call 47
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 15
    call 47
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;61;) (type 17) (param v128)
    local.get 0
    i8x16.extract_lane_u 0
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 1
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 2
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 3
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 4
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 5
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 6
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 7
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 8
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 9
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 10
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 11
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 12
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 13
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 14
    call 52
    i32.const 32
    call 45
    local.get 0
    i8x16.extract_lane_u 15
    call 52
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;62;) (type 20)
    (local i32)
    i32.const 33
    local.set 0
    loop  ;; label = @1
      local.get 0
      call 45
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
  (func (;63;) (type 20)
    (local v128)
    call 62
    i32.const 10
    call 45
    v128.const i32x4 0x24232221 0x28272625 0x2b2a2929 0x2f2e2d2c
    local.set 0
    local.get 0
    call 49
    i32.const 10
    call 45
    local.get 0
    call 60)
  (func (;64;) (type 20)
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
    call 54
    local.get 0
    local.get 1
    i32x4.mul
    call 54
    local.get 0
    local.get 2
    i32x4.add
    call 54
    local.get 0
    local.get 2
    i32x4.mul
    call 54
    local.get 1
    local.get 2
    i32x4.add
    call 54
    local.get 1
    local.get 2
    i32x4.mul
    call 54)
  (func (;65;) (type 20)
    (local i32 v128 v128 v128)
    i32.const 128
    local.set 0
    v128.const i32x4 0x00010000 0x00030002 0x00050004 0x00070006
    local.set 1
    local.get 1
    call 57
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
    call 57
    v128.const i32x4 0x00000005 0x00000006 0x00000007 0x00000008
    local.set 3
    local.get 3
    call 54
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
    call 47
    i32.const 32
    call 45
    i32.const 4
    local.get 0
    i32.add
    i32.load
    call 47
    i32.const 32
    call 45
    i32.const 8
    local.get 0
    i32.add
    i32.load
    call 47
    i32.const 32
    call 45
    i32.const 12
    local.get 0
    i32.add
    i32.load
    call 47
    i32.const 32
    call 45
    i32.const 10
    call 45)
  (func (;66;) (type 20)
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const 1
    i32.const 2
    i32.const 3
    i32.const 4
    call 55
    call 54
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const -1
    i32.const -2
    i32.const -3
    i32.const -4
    call 55
    call 54
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const 9999
    i32.const 8888
    i32.const 7777
    i32.const 6666
    call 55
    call 54
    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
    i32.const -9999
    i32.const -8888
    i32.const -7777
    i32.const -6666
    call 55
    call 54)
  (func (;67;) (type 20)
    call 63
    call 64
    call 65
    call 66)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "_start" (func 67)))
