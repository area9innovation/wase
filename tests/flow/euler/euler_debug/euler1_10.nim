import std/monotimes
import euler1
import euler2
from euler3 import findBiggestDivisor
import euler4

let e1_1 = getMonoTime()
let res1 = euler1(1000)  # Correct: 233168
let e1_2 = getMonoTime()
echo(e1_2 - e1_1)
echo(res1)

let e2_1 = getMonoTime()
let res2 = euler2(0.0, 1.0, 0.0) # Correct: 4613732
let e2_2 = getMonoTime()
echo(e2_2 - e2_1)
echo(res2)

let e3_1 = getMonoTime()
let res3 = findBiggestDivisor(600851475143.0) # Correct: 6857
let e3_2 = getMonoTime()
echo(e3_2 - e3_1)
echo(res3)

let e4_1 = getMonoTime()
let res4 = euler4() # Correct: 906609
let e4_2 = getMonoTime()
echo(e4_2 - e4_1)
echo(res4)

