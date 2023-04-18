def format_duraction(seconds)
  return "now" if seconds == 0
  result_array = []
  years = seconds / 31_536_000
  days = (seconds / 86_400) % 365
  hours = (seconds / 3600) % 24
  minutes = (seconds / 60) % 60
  seconds = seconds % 60
  if years == 1
    result_array << "#{years} year"
  elsif years > 1
    result_array << "#{years} years"
  end
  if days == 1
    result_array << "#{days} day"
  elsif days > 1
    result_array << "#{days} days"
  end
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

# Lots of if statements and a large function are potentially a code smell, look at the below
#  is able to use a hash to store the values and then iterate over the hash to create the output string. The regex is ridicoulous though.
# def format_duration(total)
# 	if total == 0
# 		"now"
# 	else
# 		duration = {
# 			year:   total / (60 * 60 * 24 * 365),
# 			day:    total / (60 * 60 * 24) % 365,
# 			hour:   total / (60 * 60) % 24,
# 			minute: total / 60 % 60,
# 			second: total % 60
# 		}

# 		@output = []

# 		duration.each do |key, value|
# 			if value > 0
# 				@output << "#{value} #{key}"
# 				@output.last << "s" if value != 1
# 			end
# 		end

# 		@output.join(', ').gsub(/\,\s(?=\d+\s\w+$)/, " and ")
# 	end
# end
