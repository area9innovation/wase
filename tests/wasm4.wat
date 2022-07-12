(module
  (type (;0;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;1;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func))
  (import "env" "memory" (memory (;0;) 1))
  (import "env" "blit" (func (;0;) (type 0)))
  (import "env" "blitSub" (func (;1;) (type 1)))
  (import "env" "line" (func (;2;) (type 2)))
  (import "env" "hline" (func (;3;) (type 3)))
  (import "env" "vline" (func (;4;) (type 3)))
  (import "env" "oval" (func (;5;) (type 2)))
  (import "env" "rect" (func (;6;) (type 2)))
  (import "env" "text" (func (;7;) (type 3)))
  (import "env" "tone" (func (;8;) (type 2)))
  (import "env" "diskr" (func (;9;) (type 4)))
  (import "env" "diskw" (func (;10;) (type 4)))
  (import "env" "trace" (func (;11;) (type 5)))
  (import "env" "tracef" (func (;12;) (type 4)))
  (func (;13;) (type 6)
    (local i32)
    block  ;; label = @1
      global.get 2
      i32.load
      local.set 0
      block  ;; label = @2
        local.get 0
        global.get 13
        i32.and
        if  ;; label = @3
          block  ;; label = @4
            global.get 33
            i32.const 1
            i32.sub
            global.set 33
          end
        end
        local.get 0
        global.get 14
        i32.and
        if  ;; label = @3
          block  ;; label = @4
            global.get 33
            i32.const 1
            i32.add
            global.set 33
          end
        end
        local.get 0
        global.get 15
        i32.and
        if  ;; label = @3
          block  ;; label = @4
            global.get 34
            i32.const 1
            i32.sub
            global.set 34
          end
        end
        local.get 0
        global.get 16
        i32.and
        if  ;; label = @3
          block  ;; label = @4
            global.get 34
            i32.const 1
            i32.add
            global.set 34
          end
        end
      end
    end)
  (func (;14;) (type 6)
    block  ;; label = @1
      call 13
      global.get 1
      i32.const 2
      i32.store
      i32.const 9632
      i32.const 24
      i32.const 50
      call 7
      global.get 1
      i32.const 3
      i32.store
      i32.const 41136
      global.get 33
      global.get 34
      i32.const 8
      i32.const 8
      i32.const 0
      call 0
    end)
  (global (;0;) (mut i32) (i32.const 4))
  (global (;1;) (mut i32) (i32.const 20))
  (global (;2;) i32 (i32.const 22))
  (global (;3;) i32 (i32.const 23))
  (global (;4;) i32 (i32.const 24))
  (global (;5;) i32 (i32.const 25))
  (global (;6;) i32 (i32.const 26))
  (global (;7;) i32 (i32.const 28))
  (global (;8;) i32 (i32.const 30))
  (global (;9;) i32 (i32.const 31))
  (global (;10;) i32 (i32.const 160))
  (global (;11;) i32 (i32.const 1))
  (global (;12;) i32 (i32.const 2))
  (global (;13;) i32 (i32.const 16))
  (global (;14;) i32 (i32.const 32))
  (global (;15;) i32 (i32.const 64))
  (global (;16;) i32 (i32.const 128))
  (global (;17;) i32 (i32.const 1))
  (global (;18;) i32 (i32.const 2))
  (global (;19;) i32 (i32.const 4))
  (global (;20;) i32 (i32.const 1))
  (global (;21;) i32 (i32.const 0))
  (global (;22;) i32 (i32.const 2))
  (global (;23;) i32 (i32.const 4))
  (global (;24;) i32 (i32.const 8))
  (global (;25;) i32 (i32.const 0))
  (global (;26;) i32 (i32.const 1))
  (global (;27;) i32 (i32.const 2))
  (global (;28;) i32 (i32.const 3))
  (global (;29;) i32 (i32.const 0))
  (global (;30;) i32 (i32.const 4))
  (global (;31;) i32 (i32.const 8))
  (global (;32;) i32 (i32.const 12))
  (global (;33;) (mut i32) (i32.const 76))
  (global (;34;) (mut i32) (i32.const 76))
  (export "update" (func 14))
  (data (;0;) (i32.const 41136) "\c3\81$$\00$\99\c3")
  (data (;1;) (i32.const 9632) "Move the smiley!"))
