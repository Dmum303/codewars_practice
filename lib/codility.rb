def postitive(arr)
  return 1 if arr.all? { |num| num < 1 }
  max_val = arr.max + 1
  (1...max_val).each do |num|
    return num unless arr.include?(num)
  end
end
