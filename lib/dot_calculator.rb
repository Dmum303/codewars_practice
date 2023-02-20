def dot_calculator(string)
  raise "Input is not string!" unless string.is_a? String
  array = string.split(' ')
  array[1] == "//" ? operator = :/ : operator = array[1].to_sym
  "." * array[0].length.public_send(operator, array[2].length)
end


