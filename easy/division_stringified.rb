def DivisionStringified(num1,num2)
  divided = (num1 / num2.to_f).round.to_s.split("")
  len = divided.length

  final = ""
  (len / 3).times do |i|
    break if len == 3
    final = final + "," + divided.drop(len - 3).join("")
    divided = divided.take(len - 3)
    len -= 3
  end

  divided.join("") + final
end

p DivisionStringified(123456789, 10000) # "12,345"
p DivisionStringified(5, 2) # "3"
p DivisionStringified(6874, 67) # "103"
p DivisionStringified(503394930, 43) # test is wrong?
p DivisionStringified(45, 50)
p DivisionStringified(63, 14)
p DivisionStringified(101077282, 21123) # test is wrong?
p DivisionStringified(6000000, 10)
