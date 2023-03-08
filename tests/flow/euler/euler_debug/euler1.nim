import sugar

proc foldRange(start: sink cint, endn: sink cint, acc: sink cint, fn: (cint, cint) -> cint): cint =
        #if (start <= endn):
        #        foldRange(start + 1, endn, fn(acc, start), fn)
        #else:
        #        acc
  var i = start
  var acc2 = acc
  while i <= endn:
    acc2 = fn(acc2, i)
    inc(i)
  acc2

proc euler1*(limit : sink cint) : cint {.exportc.} =
    foldRange(1, limit - 1, 0, proc (acc : cint, i : cint) : cint =
        capture i:
            if (i mod 3 == 0 or i mod 5 == 0):
                acc + i
            else: acc
    )
