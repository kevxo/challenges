numbers = [4,1,2,1,2]

def singleNumber(numbers):
  number_count = {}
  answer = 0

  for number in numbers:
    if number in number_count:
      number_count[number] += 1
    else:
      number_count[number] = 1

  for key, value in number_count.items():
    answer = key if value == 1 else answer


  return answer



print(singleNumber(numbers))