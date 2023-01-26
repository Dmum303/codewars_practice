def even_twins(array)
  array_2 = []
  array.each_with_index do |n, i|
    next if i == (array.length - 1)
    array.each_with_index do |m, j|
      next if j == 0
      array_2 << m + n
    end
  end
  counter = 0
  final = array_2.each {|num| (counter += 1) if num.even? }
  counter
  binding.irb
end
