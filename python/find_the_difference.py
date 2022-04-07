s = "abcd"
t = "abcde"

s2 = "a"
t2 = "aa"

def find_the_difference(s: str, t: str) -> str:
  string1_chars = list(s)
  string2_chars = list(t)


  if len(string1_chars) != len(string2_chars):
    difference = len(string1_chars) - len(string2_chars)

    return "".join(string2_chars[difference:])





print(find_the_difference(s, t))
print(find_the_difference(s2, t2))

