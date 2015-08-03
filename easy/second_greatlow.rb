def SecondGreatLow(arr)
  arr.sort!.uniq!

  return "#{arr.first} #{arr.first}" if arr.length == 1

  second_lowest = arr[1]
  second_greatest = arr[-2]

  "#{second_lowest} #{second_greatest}"
end

p SecondGreatLow([7, 7, 12, 98, 106]) # "12 98"
p SecondGreatLow([1, 42, 42, 180]) # "42 42"
p SecondGreatLow([4, 90]) # "90 4"
p SecondGreatLow([80, 80])
