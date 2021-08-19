n = 7

def numberOfMatches(n, count = 0):
  if n % 2 == 0:
    matches = n / 2
    count += matches
    teams = n / 2
  elif n % 2 == 1:
    matches = ( n - 1 ) / 2
    count += matches
    teams = (( n - 1 ) / 2 ) + 1

  return count if teams == 1 else numberOfMatches(teams, count)


print(numberOfMatches(n))