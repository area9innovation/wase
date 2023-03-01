import sugar

proc substring(s : string, start : int, length : int) : string = 
    substr(s, start, start + length - 1)

proc strLeft(s : string, index : int) : string =
    substring(s, 0, index)


proc strRight(s : string, index : int) : string =
    let l = len(s)
    if (index >= l):
        ""
    else:
        substring(s, index, l - index)

proc strsubsmart(s : string, start : int, len : int) : string =
    if (start >= 0 and len > 0):
        substring(s, start, len)
    else:
        let slen = len(s)
        let trueStart = if (start >= 0):
            start
        else: 
            let ss = slen + start
            if (ss >= 0): ss else: 0
        let trueLength = if (len > 0): len else: slen + len - trueStart
        substring(s, trueStart, trueLength)

proc isPalindromic(s : string) : bool =
    var v1 = s
    var l = len(s)
    var res = l <= 1
    var cond = not(res)
    while (cond):
        cond = false
        l = len(v1)
        res = l <= 1
        if (not(res)):
            let first = strLeft(v1, 1)
            let last = strRight(v1, l - 1)
            res = first == last
            if (res):
                res = false
                v1 = strsubsmart(v1, 1, -1)
                cond = true
    res

proc foldRange2(start: int, endn: int, acc1: int, acc2 : int, fn: (int, int, int) -> int): int =
  var i = start
  var acc3 = acc1
  while i <= endn:
    acc3 = fn(acc3, i, acc2)
    inc(i)
  acc3
    
proc euler4*() : int =
    foldRange2(100, 999, 0, 0, proc (acc : int, a : int, scope1 : int) : int = 
        foldRange2(100, 999, acc, a, proc (acc2 : int, b : int, a2 : int) : int =
            let p = a2 * b
            # echo("a=" & $(a2) & " b=" & $(b) & " p=" & $(p) & " acc2=" & $(acc2))
            if (p < acc2):
                acc2
            else:
                if(not(isPalindromic($(p)))): acc2 else: p
        )
    )
    
