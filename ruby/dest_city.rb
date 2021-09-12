paths = [['London', 'New York'], ['New York', 'Lima'], ['Lima', 'Sao Paulo']]
paths2 = [%w[B C], %w[D B], %w[C A]]
paths3 = [%w[A Z]]
paths4 = [%w[pYyNGfBYbm wxAscRuzOl], %w[kzwEQHfwce pYyNGfBYbm]]
paths5 = [['jMgaf WaWA', 'iinynVdmBz'], [' QCrEFBcAw', 'wRPRHznLWS'], %w[iinynVdmBz OoLjlLFzjz],
          ['OoLjlLFzjz', ' QCrEFBcAw'], ['IhxjNbDeXk', 'jMgaf WaWA'], ['jmuAYy vgz', 'IhxjNbDeXk']]

def dest_city(paths)
  paths = paths.flatten

  destination_data(paths).each do |place, _count|
    return place if destination_data(paths)[place] == 1 && paths.index(place).odd?
  end
end

def destination_data(paths, destination = {})
  paths.each do |path|
    if destination[path]
      destination[path] += 1
    else
      destination[path] = 1
    end
  end

  destination
end

p dest_city(paths)
p dest_city(paths2)
p dest_city(paths3)
p dest_city(paths4)
p dest_city(paths5)
