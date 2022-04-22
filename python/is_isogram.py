string = "Dermatoglyphics"
string2 = "aba"
string3 = "moOse"

def is_isogram(string: str) -> bool:
  list_string = list(string.lower())

  for char, count in char_dict(list_string).items():
    if count > 1:
      return False

  return True


def char_dict(list_string: list) -> dict:
  char_dict = {}

  for char in list_string:
    if char in char_dict:
      char_dict[char] += 1
    else:
      char_dict[char] = 1

  return char_dict



print(is_isogram(string))
print(is_isogram(string2))
print(is_isogram(string3))

