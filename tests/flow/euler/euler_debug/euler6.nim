import sugar
proc foldRange[T](start: sink int, endn: sink int, acc: sink T, fn: (T, int) -> T): T =
  var i = start
  var acc2 = acc
  while i <= endn:
    acc2 = fn(acc2, i)
    inc(i)
  acc2

proc euler6*(limit : int): float =
    let sumsquares = foldRange(1, limit, 0.0, proc (acc : float, n : int) : float = acc + (n * n).float);
    let natsum = foldRange(1, limit, 0.0, proc (acc : float, n : int) : float = acc + n.float);
    natsum * natsum - sumsquares
