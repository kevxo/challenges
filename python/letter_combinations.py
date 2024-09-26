from typing import List

DIGIT_DICT = {
  "2": ["a", "b", "c"],
  "3": ["d", "e", "f"],
  "4": ["g", "h", "i"],
  "5": ["j", "k", "l"],
  "6": ["m", "n", "o"],
  "7": ["p", "q", "r", "s"],
  "8": ["t", "u", "v"],
  "9": ["w", "x", "y", "z"],
}

def letter_combinations(digits: str) -> List[str]:
  answer = []
  digits = list(digits)

  for idx, digit in enumerate(digits):
    if DIGIT_DICT.get(digit):
      for letter in DIGIT_DICT[digit]:
        count = 0
        if len(digits) == 1:
          return  DIGIT_DICT[digits[idx]]
        try:
          while count < len(DIGIT_DICT[digits[count + 1]]):
            answer.append(letter + DIGIT_DICT[digits[count + 1]][count])
            count += 1

        except(IndexError):
          continue
  return answer


print(letter_combinations("23"))
print(letter_combinations(""))
print(letter_combinations("2"))
# print(letter_combinations("234"))


