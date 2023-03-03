def leap_year(start_year, end_year)
  leap_year_array = []
  (start_year..end_year).each do |year|
    if (year % 400) == 0 || ((year % 4) == 0 && (year % 100) != 0 )
      leap_year_array << year
    end
  end
  leap_year_array
end
