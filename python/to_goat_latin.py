sentence = "HZ sg L"

def _handle_consonants(word: str) -> str:
  count = (len(word) - 1) * -1
  letter = word[:count]

  word += letter
  word += "ma"

  if count == 0:
    word = word[count:]
  else:
    word = word[1:]

  return word

def _structure_new_words(words: list, new_words: list, index: int) -> list:
  vowels = ['a', 'e', 'i', 'o', 'u']

  for word in words:
    if word[0].lower() in vowels:
      word += "ma"
    elif word[0].lower() not in vowels:
      word = _handle_consonants(word)

    word += (index * "a")

    new_words.append(word)
    index += 1

  return new_words

def to_goat_latin(string: str) -> str:
  words = string.split()
  new_words = []
  index = 1

  new_words = _structure_new_words(words, new_words, index)

  return " ".join(new_words)




print(to_goat_latin(sentence))