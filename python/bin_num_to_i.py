head = [1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]

def bin_num_to_i(head):
  length = len(head)
  answer = ""

  for i in range(length):
    answer += str(head[i])

  return int(answer, 2)


print(bin_num_to_i(head))