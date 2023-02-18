import parseopt
import os

proc readFromFile(path: string): string = 
  var file = open(path, fmRead)
  defer:
    close(file)
  return file.readAll()

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

if dirExists(voiceDirectory):
  echo "directory ", voiceDirectory, " does not exist."
  quit(1)
if fileExists(questionFile):
  echo "file ", questionFile, " does not exist."
  quit(1)