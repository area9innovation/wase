import sugar 

proc foldRange[T, S](start: sink int, endn: sink int, acc: sink T, fn: (T, int, S) -> T, scope : S): T =
  var i = start
  var acc2 = acc
  while i <= endn:
    acc2 = fn(acc2, i, scope)
    inc(i)
  acc2

proc euler9*(limit : int) : int =
    foldRange(1, limit - 1, 0, proc (biggest : int, a : int, scope : int) : int =
        let b = (1000 * (a - 500)) div (a - 1000)
        let c = 1000 - b - a
        if (b < 0 or c < 0 or a * a + b * b != c * c):
            biggest
        else:
            let product = a * b * c
            max(product, biggest)
    , 0)