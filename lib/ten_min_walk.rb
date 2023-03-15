def ten_min_walk(array)
  return false if array.length != 10
  counter = 0
  array.each do |direction|
    if direction == "n" || direction == "e"
      counter += 1
    elsif direction == "s" || direction == "w"
      counter -= 1
    end
  end
  counter == 0 ? true : false
end
