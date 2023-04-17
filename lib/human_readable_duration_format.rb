def format_duraction(seconds)
  return "now" if seconds == 0
  result_array = []
  if seconds > 60
    minutes = seconds / 60
    seconds = seconds % 60
    if minutes == 1
      result_array << "#{minutes} minute"
    elsif minutes > 1
      result_array << "#{minutes} minutes"
    end
    if seconds == 1
      result_array << "#{seconds} second"
    elsif seconds > 1
      result_array << "#{seconds} seconds"
    end
  end
  result_array.length > 1 ? result_array.join(" and ") : result_array[0]
end

# Could work out seconds, minutes, hours, days, weeks, months, years
#  Stick all the ones with > 0 into an array and if == 0 return. If greater than 1
#  add "and" for [-1]
