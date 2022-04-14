head = [1, 1, 2]
head2 = [1, 2, 3, 3, 4]
head3 = [3, 5, 1, 3, 4, 2, 2]


def delete_duplicates(head):
  head.sort()

  for number, count in number_count(head).items():
    if count >= 2:
      head.remove(number)

  return head

def number_count(head):
  number_count = {}

  for node in head:
    if node not in number_count:
      number_count[node] = 1
    else:
      number_count[node] += 1

  return number_count


print(delete_duplicates(head))
print(delete_duplicates(head2))
print(delete_duplicates(head3))

