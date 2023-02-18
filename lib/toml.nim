import parsetoml
import re
import types

proc readFromToml*(option: var Options, path: string) = 
  let parsedToml = parseToml.parseFile(path)["config"]
  if parsedToml.hasKey("path"):
    option.dirPath = parsedToml["path"].getStr()
  if parsedToml.hasKey("interval"):
    option.interval = parsedToml["interval"].getInt()
  if parsedToml.hasKey("regex"):
    option.regex = re(parsedToml["regex"].getStr())