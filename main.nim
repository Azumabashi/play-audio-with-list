import parseopt
import os

var 
  p = initOptParser()
  voiceDirectory = ""
  questionFile = ""
  regexStr = ""
while true:
  p.next()
  case p.kind
  of cmdEnd:
    break
  of cmdLongOption:
    if p.key == "voice":
      voiceDirectory = p.val
    elif p.key == "question":
      questionFile = p.val
    elif p.key == "regex":
      regexStr = p.val
  else:
    continue