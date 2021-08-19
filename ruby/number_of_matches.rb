n = 14

def number_of_matches(n, count = 0)
  if n.even?
    matches = n / 2
    count += matches
    teams = n / 2

  elsif n.odd?
    matches = (n - 1 ) / 2
    count += matches
    teams = ((n - 1) / 2 ) + 1
  end

  teams == 1 ? count : number_of_matches(teams, count)
end

p number_of_matches(n)