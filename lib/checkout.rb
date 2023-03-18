class Shop

  def  checkout(string)
    counter = 0
    count_a = 0
    string.chars.each do |i|
      # binding.irb
      if i == "A"
        counter += 50
        count_a += 1
      elsif i == "B"
        counter += 30
      elsif i == "C"
        counter += 20
      elsif i == "D"
        counter += 15
      end
      if count_a == 3
        counter -= 20
        count_a = 0
      end
    end
    counter
  end

end
