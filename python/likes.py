names = ['Peter']
names2 = []
names3 = ["Jacob", "Alex"]
names4 = ["Max", "John", "Mark"]
names5 = ["Alex", "Jacob", "Mark", "Max"]


def likes(names: list) -> str:
  if len(names) > 3:
    others_count = len(names) - 2
    return f"{names[0]}, {names[1]} and {others_count} others like this"
  elif len(names) == 3:
    return f"{names[0]}, {names[1]} and {names[2]} like this"
  elif len(names) == 2:
    return f"{names[0]} and {names[1]} like this"
  elif len(names) == 1:
    return f"{names[0]} likes this"
  else:
    return 'no one likes this'

print(likes(names))
print(likes(names2))
print(likes(names3))
print(likes(names4))
print(likes(names5))

