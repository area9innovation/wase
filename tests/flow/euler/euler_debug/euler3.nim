import std/math

proc biggestFactor(factor : float, limit : float, biggest : float, n : float) : float =
    #if (factor < limit):
    #    if (n mod factor == 0.0): 
    #        biggestFactor(factor, limit, factor, n / factor)
    #    else:
    #        biggestFactor(if (factor == 2.0): 3.0 else: factor + 2.0, limit, biggest, n)   
    #else:
    #    biggest
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

# echo(findBiggestDivisor(600851475143.0)) # Correct: 6857
