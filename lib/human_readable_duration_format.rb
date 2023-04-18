def format_duraction(seconds)
  return "now" if seconds == 0
  result_array = []
  hours = seconds / 3600
  minutes = ((seconds / 60) % 60)
  seconds = seconds % 60
  if hours == 1
    result_array << "#{hours} hour"
  elsif hours > 1
    result_array << "#{hours} hours"
  end
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
  if result_array.length > 2
    joined = result_array[0..-2].join(", ")
    joined.split(" ").push("and").push(result_array[-1]).join(" ")
  elsif result_array.length == 2
    result_array.insert(-2, "and")
    result_array.join(" ")
  else
    result_array[0]
  end
end

# Could work out seconds, minutes, hours, days, weeks, months, years
#  Stick all the ones with > 0 into an array and if == 0 return. If greater than 1
#  add "and" for [-1]
# Now having the issue of commas and "and" in the right place, I imagine that a way of doing this would be to to take a slice of n-1 and join them with commas, then split back to an array and add the last element with "and" in front of it. That worked well
#  Next add days and years
