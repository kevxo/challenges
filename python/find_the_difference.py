from collections import Counter

s = "abcd"
t = "abcde"

s2 = "a"
t2 = "aa"

def find_the_difference(s: str, t: str) -> str:
  s_dict = Counter(s)
  t_dict = Counter(t)


  for char, value in t_dict.items():
    if t_dict[char] > s_dict[char]:
      return char





print(find_the_difference(s, t))
print(find_the_difference(s2, t2))

