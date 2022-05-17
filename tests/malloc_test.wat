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
  (type (;18;) (func (param i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32)))
  (type (;20;) (func (param i32 i32 i32)))
  (type (;21;) (func))
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
  (func (;50;) (type 15) (result i32)
    global.get 0
    i32.load)
  (func (;51;) (type 16) (param i32)
    global.get 0
    local.get 0
    i32.store)
  (func (;52;) (type 3) (param i32) (result i32)
    local.get 0)
  (func (;53;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 4
    i32.add)
  (func (;54;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func (;55;) (type 18) (param i32 i32 i32 i32)
    local.get 0
    call 52
    local.get 1
    i32.store
    local.get 0
    call 53
    local.get 2
    i32.store
    local.get 0
    call 54
    local.get 3
    i32.store)
  (func (;56;) (type 3) (param i32) (result i32)
    local.get 0
    call 52
    i32.load)
  (func (;57;) (type 3) (param i32) (result i32)
    local.get 0
    call 53
    i32.load)
  (func (;58;) (type 3) (param i32) (result i32)
    local.get 0
    call 54
    i32.load)
  (func (;59;) (type 19) (param i32 i32)
    local.get 0
    call 52
    local.get 1
    i32.store)
  (func (;60;) (type 19) (param i32 i32)
    local.get 0
    call 53
    local.get 1
    i32.store)
  (func (;61;) (type 19) (param i32 i32)
    local.get 0
    call 54
    local.get 1
    i32.store)
  (func (;62;) (type 0) (param i32 i32) (result i32)
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
      call 58
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
        call 56
        local.set 3
        local.get 0
        local.get 2
        global.get 1
        i32.add
        local.get 1
        call 58
        i32.add
        call 61
        local.get 0
        local.get 3
        call 59
        local.get 3
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 3
          local.get 0
          call 60
        end
        local.get 0
      else
        local.get 1
      end
    else
      local.get 1
    end)
  (func (;63;) (type 20) (param i32 i32 i32)
    local.get 0
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 0
      local.get 2
      call 59
    else
      local.get 2
      call 51
    end
    local.get 2
    local.get 0
    call 60
    local.get 1
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 1
      local.get 2
      call 60
    end
    local.get 2
    local.get 1
    call 59
    local.get 0
    local.get 2
    call 62
    local.get 1
    call 62
    drop)
  (func (;64;) (type 16) (param i32)
    (local i32 i32)
    local.get 0
    call 57
    local.set 1
    local.get 0
    call 56
    local.set 2
    local.get 1
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 1
      local.get 2
      call 59
    else
      local.get 2
      call 51
    end
    local.get 2
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 2
      local.get 1
      call 60
    end)
  (func (;65;) (type 19) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    call 58
    local.get 0
    i32.sub
    global.get 1
    i32.ge_s
    if  ;; label = @1
      local.get 1
      call 56
      local.set 2
      local.get 1
      call 57
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
      call 58
      local.get 4
      local.get 1
      i32.sub
      i32.sub
      call 55
      local.get 3
      local.get 2
      local.get 4
      call 63
      local.get 1
      i32.const -1
      i32.const -1
      local.get 0
      call 55
    else
      local.get 1
      call 64
    end)
  (func (;66;) (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.const 0
    i32.le_s
    if (result i32)  ;; label = @1
      i32.const -1
    else
      local.get 1
      call 58
      local.get 0
      i32.ge_s
      if (result i32)  ;; label = @2
        local.get 0
        local.get 1
        call 65
        local.get 1
      else
        local.get 0
        local.get 1
        call 56
        call 66
      end
    end)
  (func (;67;) (type 19) (param i32 i32)
    local.get 0
    local.get 1
    i32.lt_s
    if  ;; label = @1
      local.get 1
      call 57
      local.get 1
      local.get 0
      call 63
    else
      local.get 1
      call 56
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        call 56
        call 67
      else
        local.get 1
        i32.const -1
        local.get 0
        call 63
      end
    end)
  (func (;68;) (type 15) (result i32)
    i32.const 256
    i32.const 1024
    i32.mul)
  (func (;69;) (type 15) (result i32)
    i32.const 65536
    memory.size
    i32.mul
    call 68
    i32.sub)
  (func (;70;) (type 15) (result i32)
    i32.const 65536
    memory.size
    i32.mul
    global.get 1
    i32.sub
    global.get 0
    i32.sub
    i32.const 4
    i32.sub
    call 68
    i32.sub)
  (func (;71;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 16
    i32.le_s
    if (result i32)  ;; label = @1
      call 69
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
      call 50
      call 66
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
  (func (;72;) (type 16) (param i32)
    (local i32 i32)
    call 69
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
      call 50
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 0
        call 51
        local.get 0
        i32.const -1
        call 59
        local.get 0
        i32.const -1
        call 60
      else
        local.get 0
        global.get 1
        i32.sub
        call 50
        call 67
      end
    end)
  (func (;73;) (type 19) (param i32 i32)
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
  (func (;74;) (type 16) (param i32)
    local.get 0
    global.set 0
    i32.const 0
    if  ;; label = @1
      call 69
      call 48
      i32.const 10
      call 45
      call 68
      call 48
      i32.const 10
      call 45
      call 69
      call 68
      i32.add
      call 48
      i32.const 10
      call 45
    end
    call 69
    i32.const 4
    i32.add
    call 68
    i32.const 4
    i32.sub
    call 73
    call 69
    call 69
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    if  ;; label = @1
      call 70
      call 48
      i32.const 10
      call 45
    end
    global.get 0
    i32.const 4
    i32.add
    call 51
    call 50
    i32.const -1
    i32.const -1
    call 70
    call 55)
  (func (;75;) (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    call 56
    local.set 2
    local.get 0
    call 58
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
      call 75
    else
      local.get 3
    end)
  (func (;76;) (type 15) (result i32)
    call 50
    i32.const 0
    call 75)
  (func (;77;) (type 15) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 15
    call 71
    local.set 0
    local.get 0
    call 72
    i32.const 15
    call 71
    local.set 1
    local.get 1
    call 72
    i32.const 4
    call 71
    local.set 2
    i32.const 256
    call 71
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
    call 72
    i32.const 1048576
    call 71
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
  (func (;78;) (type 21)
    i32.const 32
    call 74
    call 77
    call 47)
  (memory (;0;) 128)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) i32 (i32.const 12))
  (export "memory" (memory 0))
  (export "_start" (func 78)))
