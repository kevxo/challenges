def my_flattenr(input, out_put_arr = [])
  input.each do |element|
    if element.class != Array
      out_put_arr << element
    else
      my_flattenr(element, out_put_arr)
    end
  end
  out_put_arr
end

p my_flattenr([1, 2, 3, [[4], 5], [[[6]]]])