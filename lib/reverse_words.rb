def reverser(string)
  string_array = string.split(" ")
  array_rev = string_array.map { |w| w.reverse }
  string_array.each do |word|
    binding.irb
    string = string.sub(word, word.reverse)
  end
  string
end
