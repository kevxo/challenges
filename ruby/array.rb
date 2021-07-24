class List
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def rotate(rotate)

    rotate.times do
      first = @array.shift(rotate)
      p @array.append(first).flatten!
    end

  end

  def get_at(index)
    @array[index]
  end
end

list = List.new([1, 2, 3])
p list.rotate(2)
p list.get_at(1)
