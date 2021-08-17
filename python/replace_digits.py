import string

s = 'a1c1e1'
s2 = 'a1b2c3d4e'
s3 = 'v0g6s4d'

def replaceDigits(s):
  alphabet = list(string.ascii_lowercase)
  stringArr = list(s)

  for i in range(len(stringArr)):
    if stringArr[i].isdigit() and i % 2 == 1:
      letterI = alphabet.index(stringArr[i - 1]) + int(stringArr[i])
      stringArr[i] = alphabet[letterI]

  return ''.join(stringArr)

print(replaceDigits(s))
print(replaceDigits(s2))
print(replaceDigits(s3))