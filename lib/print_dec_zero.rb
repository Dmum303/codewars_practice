require 'time'

def decimal_print(num)
  num.round(6)
end


def timeConversion(s)
time_obj = Time.strptime(s, '%I:%M:%S%p')
output_time = time_obj.strftime('%H:%M:%S')
# binding.irb
output_time
end
