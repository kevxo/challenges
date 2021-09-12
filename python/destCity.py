paths = [['London', 'New York'], ['New York', 'Lima'], ['Lima', 'Sao Paulo']]
paths2 = [['B', 'C'], ['D', 'B'], ['C', 'A']]
paths3 = [['A', 'Z']]
paths4 = [['pYyNGfBYbm', 'wxAscRuzOl'], ['kzwEQHfwce', 'pYyNGfBYbm']]
paths5 = [['jMgaf WaWA', 'iinynVdmBz'], [' QCrEFBcAw', 'wRPRHznLWS'], ['iinynVdmBz', 'OoLjlLFzjz'],
          ['OoLjlLFzjz', ' QCrEFBcAw'], ['IhxjNbDeXk', 'jMgaf WaWA'], ['jmuAYy vgz', 'IhxjNbDeXk']]

import itertools

# This needs to be revisted and worked on!

def destCity(paths):
  cities = list(itertools.chain(*paths))

  for place in destinationData(cities).keys():
    import pdb; pdb.set_trace()
    if destinationData(cities)[place] % 2 == 1 and cities.index(place) % 2 == 1:
      return place

def destinationData(paths, destination = {}):
  for path in paths:
    if path in destination:
      destination[path] += 1
    else:
      destination[path] = 1

  return destination


print(destCity(paths))
print(destCity(paths2))
print(destCity(paths3))
print(destCity(paths4))
print(destCity(paths5))
