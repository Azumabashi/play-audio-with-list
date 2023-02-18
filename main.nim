import parseopt
import os

var p = initOptParser()
while true:
  p.next()
  case p.kind
  of cmdEnd:
    break
  of cmdArgument:
    continue
  else:
    continue