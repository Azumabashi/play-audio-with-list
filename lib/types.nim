import re

type
  Options* = ref object
    dirPath*: string
    interval*: int
    regex*: Regex