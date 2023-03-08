import sugar

proc foldRange(start: sink int, endn: sink int, acc: sink int, fn: (int, int) -> int): int =
  var i = start
  var acc2 = acc
  while i <= endn:
    acc2 = fn(acc2, i)
    inc(i)
  acc2

proc gcd(a : int, b : int): int =
    if (b == 0):
        a
    else:
        gcd(b, a mod b)

proc euler5*(limit : int): int =
    foldRange(1, limit, 1, proc (acc : int, n : int) : int =
        if (acc mod n == 0):
            acc
        else:
            let required = n div gcd(acc, n)
            acc * required       
    )
