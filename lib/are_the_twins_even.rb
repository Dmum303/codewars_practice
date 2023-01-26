def even_twins(array)
  array_2 = []
  array.each_with_index do |n , i|
    next if i == (array.length - 1)
    ((i+1)..array.length - 1).each do |num|
      array_2 << array[num] + n
    end
  end
  array_2.uniq.select {| num | num.even?}.length
end
