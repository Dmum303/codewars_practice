class Shop

  def checkout(string)
    return -1 if (string.is_a? Integer) || (string != string.upcase)
    counter, count_a, count_b = 0, 0, 0
    string.chars.each do |i|
      if i == "A"
        counter += 50
        count_a += 1
      elsif i == "B"
        counter += 30
        count_b += 1
      elsif i == "C"
        counter += 20
      elsif i == "D"
        counter += 15
      end
      if count_a == 3
        counter -= 20
        count_a = 0
      elsif count_b == 2
        counter -= 15
        count_b = 0
      end
    end
    counter
  end

end
