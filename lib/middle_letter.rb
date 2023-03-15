def middle_letter(string)
  raise "no dice chump" unless string.is_a? String
  index = (string.length / 2).ceil
  if string.length.odd?
    string.chars[index]
  else
    string.chars[index-1] + string.chars[index]
  end
end
