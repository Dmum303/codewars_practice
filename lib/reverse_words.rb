def reverser(string)
  string_array = string.split(" ")
  string_array.each { |word| string = string.gsub(word, word.reverse) }
  string
end
