import std/monotimes
import std/math
import times

proc euler2(a : sink float, b : sink float, sum : sink float) : float =
    #fib = a + b;
    #nsum = if (fib % 2.0 == 0.0) sum + fib else sum; 
    #if (fib < 4000000.0) {
    #    euler2(b, fib, nsum)
    #} else {
    #    nsum;
    #}
  var v1 = a
  var v2 = b
  var fib = v1 + v2
  var v3 = if (round(fib) mod 2 == 0): sum + fib else: sum
  while fib < 4000000.0:
    fib = v1 + v2
    v3 = if (v1 != a and round(fib) mod 2 == 0): v3 + fib else: v3
    v1 = v2
    v2 = fib
  v3


let a = getMonoTime()
let res = euler2(0.0, 1.0, 0.0) # Correct: 4613732
let b = getMonoTime()
let c = b - a
echo(c)
echo(c.inMilliseconds)
echo(res)
