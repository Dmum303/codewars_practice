def height(n)
  cat_one = little_cat = 2000000.0
  return "2000000.000" if n == 0
  (0...n).each {
    little_cat = (little_cat / 2.5).to_f
    cat_one += little_cat
   }
  if cat_one.to_s.split(".")[1].length == 1
    cat_one.to_s << "00"
  elsif
    cat_one.to_s.split(".")[1].length == 2
      cat_one.to_s << "0"
  else
    cat_one.round(3).to_s
  end
end
