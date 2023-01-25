def height(n)
  cat_one = "2000000.000"
  return cat_one if n == 0
  cat_one = cat_one.to_f
  (0...n).each { cat_one += (cat_one / 2.5).to_f }
  (cat_one.round(3) * 1000).to_i
end
