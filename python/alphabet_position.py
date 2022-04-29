import string

text = "The sunset sets at twelve o' clock."

def alphabet_position(text: str) -> str:
  alphabet_letters = list(string.ascii_lowercase)

  letter_indexes = []

  convert_text = list(text.lower())

  for char in convert_text:
    if char in alphabet_letters:
      letter_indexes.append(str(alphabet_letters.index(char) + 1))

  return " ".join(letter_indexes)


print(alphabet_position(text))