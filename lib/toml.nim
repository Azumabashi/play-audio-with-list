import parsetoml
import re
import types

proc readFromToml*(path: string): Options = 
  let parsedToml = parseToml.parseFile(path)["config"]
  if parsedToml.hasKey("path"):
    result.dirPath = parsedToml["path"].getStr()
  if parsedToml.hasKey("interval"):
    result.interval = parsedToml["interval"].getInt()
  if parsedToml.hasKey("regex"):
    result.regex = re(parsedToml["regex"].getStr())