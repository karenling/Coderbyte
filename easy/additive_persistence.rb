def AdditivePersistence(num)
  counter = 0
  until num < 10
    counter += 1
    num = num.to_s.split("").map!(&:to_i).inject(:+)
  end

  counter
end

p AdditivePersistence(2718) # 9
p AdditivePersistence(4) # 0
p AdditivePersistence(19) # 2
