(module
  (type $t0 (func (param i32 i32 i32 i32 i32 i32)))
  (type $t1 (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type $t2 (func (param i32 i32 i32 i32)))
  (type $t3 (func (param i32 i32 i32)))
  (type $t4 (func))
  (import "env" "blit" (func $env.blit (type $t0)))
  (import "env" "blit_sub" (func $env.blit_sub (type $t1)))
  (import "env" "line" (func $env.line (type $t2)))
  (import "env" "hline" (func $env.hline (type $t3)))
  (import "env" "vline" (func $env.vline (type $t3)))
  (import "env" "oval" (func $env.oval (type $t2)))
  (import "env" "rect" (func $env.rect (type $t2)))
  (import "env" "text" (func $env.text (type $t3)))
  (func $update (type $t4)
    i32.const 10
    i32.const 10
    i32.const 32
    i32.const 32
    call $env.rect)
  (export "update" (func $update)))
