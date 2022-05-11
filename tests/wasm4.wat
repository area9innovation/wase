(module
  (type $t0 (func (param i32 i32 i32 i32 i32 i32)))
  (type $t1 (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type $t2 (func (param i32 i32 i32 i32)))
  (type $t3 (func (param i32 i32 i32)))
  (type $t4 (func))
  (import "env" "memory" (memory $env.memory 1))
  (import "env" "blit" (func $env.blit (type $t0)))
  (import "env" "blitSub" (func $env.blitSub (type $t1)))
  (import "env" "line" (func $env.line (type $t2)))
  (import "env" "hline" (func $env.hline (type $t3)))
  (import "env" "vline" (func $env.vline (type $t3)))
  (import "env" "oval" (func $env.oval (type $t2)))
  (import "env" "rect" (func $env.rect (type $t2)))
  (import "env" "text" (func $env.text (type $t3)))
  (func $f8 (type $t4)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    global.get $g2
    i32.load
    local.set $l0
    i32.const 0
    local.set $l1
    i32.const 0
    local.set $l2
    local.get $l0
    global.get $g13
    i32.and
    if $I0
      i32.const -1
      local.set $l1
    end
    local.get $l0
    global.get $g14
    i32.and
    if $I1
      i32.const 1
      local.set $l1
    end
    local.get $l0
    global.get $g15
    i32.and
    if $I2
      i32.const -1
      local.set $l2
    end
    local.get $l0
    global.get $g16
    i32.and
    if $I3
      i32.const 1
      local.set $l2
    end
    global.get $g17
    local.get $l1
    i32.add
    global.set $g17
    global.get $g18
    local.get $l2
    i32.add
    global.set $g18)
  (func $update (type $t4)
    call $f8
    global.get $g1
    i32.const 2
    i32.store
    i32.const 9632
    i32.const 24
    i32.const 50
    call $env.text
    global.get $g1
    i32.const 3
    i32.store
    i32.const 41136
    global.get $g17
    global.get $g18
    i32.const 8
    i32.const 8
    i32.const 0
    call $env.blit)
  (global $g0 (mut i32) (i32.const 4))
  (global $g1 (mut i32) (i32.const 20))
  (global $g2 i32 (i32.const 22))
  (global $g3 i32 (i32.const 23))
  (global $g4 i32 (i32.const 24))
  (global $g5 i32 (i32.const 25))
  (global $g6 i32 (i32.const 26))
  (global $g7 i32 (i32.const 28))
  (global $g8 i32 (i32.const 30))
  (global $g9 i32 (i32.const 31))
  (global $g10 i32 (i32.const 160))
  (global $g11 i32 (i32.const 1))
  (global $g12 i32 (i32.const 2))
  (global $g13 i32 (i32.const 16))
  (global $g14 i32 (i32.const 32))
  (global $g15 i32 (i32.const 64))
  (global $g16 i32 (i32.const 128))
  (global $g17 (mut i32) (i32.const 76))
  (global $g18 (mut i32) (i32.const 76))
  (export "update" (func $update))
  (data $d0 (i32.const 41136) "")
  (data $d1 (i32.const 9632) "Move the square!"))
