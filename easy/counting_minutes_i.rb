def ConvertToMilitary(time)
  hours = time.split(":")[0]
  minutes = time.split(":")[1][0..-3]
  if (time.include?("pm") && hours != "12") || (time.include?("am") && hours == "12")
    hours = hours.to_i + 12
  end

  "#{hours}:#{minutes}"
end

def CountingMinutesI(str)
  str = str.split("-")
  beginning = ConvertToMilitary(str[0])
  ending = ConvertToMilitary(str[1])

  beginning_hour = beginning.split(":")[0].to_i
  beginning_minute = beginning.split(":")[1].to_i
  ending_hour = ending.split(":")[0].to_i
  ending_minute = ending.split(":")[1].to_i

  hours = 0
  minutes = 0
  until beginning_hour == ending_hour && beginning_minute == ending_minute
    minutes += 1
    beginning_minute += 1

    if beginning_hour == 24
      beginning_hour = 0
    end

    if beginning_minute == 60
      beginning_hour += 1
      beginning_minute = 0
    end
  end

  minutes
end

p CountingMinutesI("12:30pm-12:00am") #690
p CountingMinutesI("1:23am-1:08am") #1425
p CountingMinutesI("9:00am-10:00am") #60
p CountingMinutesI("1:00pm-11:00am") #1320
p CountingMinutesI("1:00pm-11:00am") #1320
p CountingMinutesI("2:03pm-1:39pm") #1416
p CountingMinutesI("1:23am-1:08am") #1425
p CountingMinutesI("2:08pm-2:00am") #712
p CountingMinutesI("3:00pm-4:45am") #825
