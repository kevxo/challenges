from typing import List


ops = ["5","-2","4","C","D","9","+","+"]

# Input: ops = ["5","-2","4","C","D","9","+","+"]
# Output: 27
# Explanation:
# "5" - Add 5 to the record, record is now [5].
# "-2" - Add -2 to the record, record is now [5, -2].
# "4" - Add 4 to the record, record is now [5, -2, 4].
# "C" - Invalidate and remove the previous score, record is now [5, -2].
# "D" - Add 2 * -2 = -4 to the record, record is now [5, -2, -4].
# "9" - Add 9 to the record, record is now [5, -2, -4, 9].
# "+" - Add -4 + 9 = 5 to the record, record is now [5, -2, -4, 9, 5].
# "+" - Add 9 + 5 = 14 to the record, record is now [5, -2, -4, 9, 5, 14].
# The total sum is 5 + -2 + -4 + 9 + 5 + 14 = 27.

def cal_points(operations: List[str]) -> int:
  ans = []

  for op in operations:
    if op == "+":
      total = ans[-1] + ans[-2]
      ans.append(total)
    elif op == "D":
      print(ans)
      score = ans[-1] * 2
      ans.append(score)
    elif op == "C":
      ans.pop()
    else:
      ans.append(int(op))


  return sum(ans)


print(cal_points(ops))