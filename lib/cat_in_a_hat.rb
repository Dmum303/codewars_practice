def height(n)
  cat_one = "2000000.000"
  return cat_one if n == 0
  cat_one = cat_one.to_f
  (0...n).each { cat_one += (cat_one / 2.5).to_f }
  if (cat_one - cat_one.to_i).to_s.length == 3
    cat_one.to_s << "00"
  # elsif
  #   (cat_one - cat_one.to_i).to_s.length == 4
  #     cat_one.to_s << "0"
  else
    cat_one.round(3).to_s
  end
end
