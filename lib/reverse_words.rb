def reverser(string)
  string.split(" ").each { |word| string = string.gsub(word, word.reverse) }
  string
end
