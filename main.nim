import parseopt

var tomlPath = ""
var p = initOptParser()
while true:
  p.next()
  case p.kind
  of cmdEnd:
    break
  of cmdArgument:
    tomlPath = p.val
  else:
    continue
if tomlPath.len == 0:
  echo "error: config path must be specified."
  quit(1)