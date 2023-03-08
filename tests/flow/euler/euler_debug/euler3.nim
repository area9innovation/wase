import std/math

proc biggestFactor(factor : float, limit : float, biggest : float, n : float) : float =
    var v1 = factor
    var v2 = limit
    var v3 = biggest
    var v4 = n
    while v1 < v2:
        if (v4 mod v1 == 0.0):
            v3 = v1
            v4 = v4 / v1
        else:
            v1 = if (v1 == 2.0): 3.0 else: v1 + 2.0
    v3


proc findBiggestDivisor*(n : float) : float =
    biggestFactor(2.0, sqrt(n), 1.0, n)

