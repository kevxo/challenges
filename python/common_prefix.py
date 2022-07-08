from typing import List

strings: List[str] = ["flower","flow","flight"]

def common_prefix(strings: List[str]) -> str:
  answer = ''
  prefix = strings[0]

  for string in strings[1:]:
    while string[:len(prefix)] != prefix and prefix:
      prefix = prefix[:len(prefix) - 1]

      if not prefix:
        break

  answer = prefix

  return answer




print(common_prefix(strings))
