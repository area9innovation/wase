# generated
import sequtils
import natives

# Types
type
  # Struct Ids
  StructType = enum
    stKeyValue,
    stPair,
    stQuadruple,
    stTriple,
    stIllegalStruct,
    stNone,
    stSome,
    stCons,
    stEmptyList,
    stOWASP,
    stVerboseOutput,
    stBitSet

  Struct* = ref object of RootObj
    id: int

  None[T1] = ref object of Struct

  Some[T1] = ref object of Struct
    value: T1

  BitSet = ref object of Struct
    data: seq[int]
    bitcount: int

proc round(d: float): int
proc floor(d: float): int

proc rt_to_double*(x: int): float = float(x)
proc rt_to_int*(x: float): int = int(round(x))
var EuCONST: float = 2.71828182845904
proc trunc(d: float): int = return rt_to_int(d)
proc i2d(i: int): float = return rt_to_double(i)
proc floor(d: float): int =
  if (d >= 0.0):
    return trunc(d)
  else:
    if ((-d - i2d(trunc(-d))) > 0.0):
      return trunc((d - 1.0))
    else:
      return trunc(d)
proc round(d: float): int = return floor((d + 0.5))

proc fori(start: int, fl0wend: int, fn: proc(i: int): void): void =
  var tailcallustart: int = start
  var tailcalluend: int = fl0wend
  var tailcallufn: proc(i: int): void = fn
  while true:
    if (tailcallustart <= tailcalluend):
      tailcallufn(tailcallustart)
      let tmpuutailcallustart: int = (tailcallustart + 1) 
      tailcallustart = tmpuutailcallustart
      continue
    else:
      return

proc enumFromTo*(f: int, t: int): seq[int] =
  var n: int = t - f + 1
  var rv: seq[int]

  if (n < 0):
    rv = @[]
    return rv

  for i in 0 .. n-1:
    rv.add(f + i)

  return rv

proc map*[T, S](s: seq[T], op: proc (x: T): S): seq[S] {.inline.} =
  sequtils.map(s, op)

proc generate[T1](start: int, fl0wend: int, fn: proc(i: int): T1): seq[T1] =
  if (start >= fl0wend):
    return @[]
  else:
    return map[int, T1](enumFromTo(start, (fl0wend - 1)), fn)

proc bitOr*(x: int, y: int): int =
  return x or y
proc bitAnd*(x: int, y: int): int =
  return x and y
proc bitNot*(x: int): int =
  return not x

proc pow(i: int, n: int): int =
  if (n > 0):
    var n2: int = pow(i, (n div 2)) 
    if ((n mod 2) == 0):
      return (n2 * n2)
    else:
      return ((n2 * n2) * i)
  else:
    return 1

var pots2: seq[int] =
  generate[int](0, 32, proc(i: int): int =
    return pow(2, i)
  )

proc pot2(n: int): int = return pots2[n] 

proc bitShl(a: int, b: int): int =
  if (b == 0):
    return a
  else:
    if (b >= 32):
      return 0
    else:
      var highest: int = bitAnd(a, pot2((31 - b))) 
      var mask: int = (pot2((31 - b)) - 1) 
      var shifted: int = (bitAnd(a, mask) * pot2(b)) 
      if (highest != 0):
        return bitOr(shifted, -2147483648)
      else:
        return shifted


proc either[T1](m: Struct, alternative: T1): T1 =
  case cast[StructType](m.id)
  of stNone:
    return alternative
  of stSome:
    var muuspec: Some[T1] = Some[T1](m) 
    var v: T1 = muuspec.value 
    return v
  else:
    assert(false,"illegal struct id in switch")

proc make_Some[T1](a_0: T1): Some[T1] =
  Some[T1](id: cast[int](stSome), value: a_0)

proc make_None[T1](): None[T1] =
  None[T1](id: cast[int](stNone))

    
proc make_BitSet(a_0: seq[int], a_1: int): BitSet =
  BitSet(id: cast[int](stBitSet), data: a_0, bitcount: a_1)
proc makeBitSet(bitcount: int): BitSet =
  var n: int = ((bitcount + 31) div 32) 
  return make_BitSet(map[int, int](enumFromTo(0, (n - 1)), proc(e: int): int =
    return 0
  ), bitcount)


proc setBitSet(set: BitSet, i: int): BitSet =
  if ((i >= 0) and (i < set.bitcount)):
    (set.data[(i div 32)] = bitOr(set.data[(i div 32)], bitShl(1, (i mod 32))))
  else:
    discard
  return set

proc unsetBitSet(set: BitSet, i: int): BitSet =
  if ((i >= 0) and (i < set.bitcount)):
    (set.data[(i div 32)] = bitAnd(set.data[(i div 32)], bitNot(bitShl(1, (i mod 32)))))
  else:
    discard
  return set

proc getBitSet(set: BitSet, i: int): Struct =
  if ((i >= 0) and (i < set.bitcount)):
    return Struct(make_Some[bool]((bitAnd(set.data[(i div 32)], bitShl(1, (i mod 32))) != 0)))
  else:
    return Struct(make_None[bool]())

proc clearFactors(n: int, step: int, set: BitSet): void =
  var tailcallun: int = n
  var tailcallustep: int = step
  var tailcalluset: BitSet = set
  while true:
    if (tailcallun < tailcalluset.bitcount):
      discard unsetBitSet(tailcalluset, tailcallun) 
      let tmpuutailcallun: int = (tailcallun + tailcallustep) 
      tailcallun = tmpuutailcallun
      continue
    else:
      return



proc sieve(n: int, set: BitSet, defVal: int, onPrime: proc(a0: int, a1: int, scope2 : (var int, int)): int, scope : (var int, int)): int =
  var tailcallun: int = n
  var tailcalluset: BitSet = set
  var tailcalludefVal: int = defVal
  var tailcalluonPrime: proc(a0: int, a1: int, scope2 : (var int, int)): int = onPrime
  while true:
    if (tailcallun < tailcalluset.bitcount):
      if either[bool](getBitSet(tailcalluset, tailcallun), false):
        clearFactors((tailcallun + tailcallun), tailcallun, tailcalluset)
        var newVal: int = tailcalluonPrime(tailcallun, tailcalludefVal, scope) 
        let tmpuutailcallun: int = (tailcallun + 1) 
        let tmpuutailcalludefVal: int = newVal 
        tailcallun = tmpuutailcallun
        tailcalludefVal = tmpuutailcalludefVal
        continue
      else:
        var newVal: int = tailcalludefVal 
        let tmpuutailcallun: int = (tailcallun + 1) 
        let tmpuutailcalludefVal: int = newVal 
        tailcallun = tmpuutailcallun
        tailcalludefVal = tmpuutailcalludefVal
        continue
    else:
      return tailcalludefVal


proc euler7*(target: int): int =
  var size: int = (target * round((EuCONST * log(i2d(target))))) 
  var set: BitSet = makeBitSet(size) 
  fori(2, size, proc(i: int): void =
    discard setBitSet(set, i) 
    return
  )
  var count: int = 0 
  return sieve(2, set, -1, proc(prime: int, lastVal: int, scope : (var int, int)): int =
    #(count = (count + 1))
    #if (count == target):
    scope[0] = scope[0] + 1
    if (scope[0] == target):
      return prime
    else:
      return lastVal
  , (count, 0))
