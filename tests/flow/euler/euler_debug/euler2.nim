import std/math

proc euler2*(a : sink float, b : sink float, sum : sink float) : float {.exportc.} =
  var v1 = a
  var v2 = b
  var fib = v1 + v2
  var v3 = if (fib mod 2.0 == 0.0): sum + fib else: sum
  while fib < 4000000.0:
    fib = v1 + v2
    v3 = if (v1 != a and fib mod 2.0 == 0.0): v3 + fib else: v3
    v1 = v2
    v2 = fib
  v3
