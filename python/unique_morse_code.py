from typing import List

words: List[str] = ["gin","zen","gig","msg"]


alphabet_mapper = {
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
}

def unique_more_code_representations(words: List[str]) -> int:
  morse_strings: List[str] = []

  for word in words:
    letters = list(word.lower())
    string = ""

    for letter in letters:
      string += alphabet_mapper[letter]


    morse_strings.append(string)

  return len(set(morse_strings))

print(unique_more_code_representations(words))