def TimeConvert(num)

  hours = num / 60
  mins = num % 60

  return "#{hours}:#{mins}"
end

p TimeConvert(63) # "1:3"
p TimeConvert(126) # "2:6"
p TimeConvert(45) # "0:45"
