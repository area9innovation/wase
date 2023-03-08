import sugar
from std/strutils import parseFloat


proc foldRange[T, S](start: int, fl0wend: int, acc: T, fn: proc(a0: T, a1: int, sc : S): T, scope : S): T =
  var tailcallustart: int = start
  let tailcalluend: int = fl0wend
  var tailcalluacc: T = acc
  let tailcalluscope: S = scope
  let tailcallufn: proc(a0: T, a1: int, sc : S): T = fn
  while true:
    if (tailcallustart <= tailcalluend):
      let tmpuutailcallustart: int = (tailcallustart + 1) 
      let tmpuutailcalluacc: T = tailcallufn(tailcalluacc, tailcallustart, tailcalluscope) 
      tailcallustart = tmpuutailcallustart
      tailcalluacc = tmpuutailcalluacc
      continue
    else:
      return tailcalluacc

proc substring(s : string, start : int, length : int) : string = 
    substr(s, start, start + length - 1)
proc getCharAt(s : string, n : int) : string = substr(s, n, n)
proc stringFoldChar[T](s : string, a : T, f : (T, string) -> T) : T =
    #foldRange(0, len(s) - 1, a, proc (a2 : T, i : int, scope : (string, (T, string) -> T)) : T = scope[1](a2, getCharAt(scope[0], i)), (s, f))
    let s1 = s
    let a1 = a
    let f1 = f
    capture s1, f1, a1:
        foldRange(0, len(s1) - 1, a1, proc (a2 : T, i : int, scope : (string, (T, string) -> T)) : T = scope[1](a2, getCharAt(scope[0], i)), (s1, f1))

proc euler8*(digits : var string, lenA : int): float =
# proc euler8*(digits : string, lenA : int): float =
    let digits2 = digits
    let len2 = lenA
    # capture len2, digits2:
    capture len2, digits2:
        foldRange(0, len(digits2) - len2 - 1, 0.0, proc (greatest : float, i : int, sc : (string, int)) : float =
            if (len(sc[0]) < 1000 or sc[1] != 13): echo "Wrong STR or LEN"
            let numbers = substring(sc[0], i, sc[1])
            let product = stringFoldChar(numbers, 1.0, proc (acc : float, d : string) : float = acc * parseFloat(d))
            max(product, greatest)
        , (digits2, len2))
