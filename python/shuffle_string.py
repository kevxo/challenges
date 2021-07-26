str = "codeleet"
indices = [4, 5, 6, 7, 0, 2, 1, 3]


def restore_string(str, indices):
  answer = [None] * len(indices)


  for i, val in enumerate(indices):
    answer[val] = str[i]

  return ''.join(answer)

print(restore_string(str, indices))

