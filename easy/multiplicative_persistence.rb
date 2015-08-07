def MultiplicativePersistence(num)
  counter = 0

  until num < 10
    num = num.to_s.split("").map!(&:to_i).inject(:*)
    counter += 1
  end

  counter     
end

p MultiplicativePersistence(39) #3
p MultiplicativePersistence(4) #0
p MultiplicativePersistence(25) #2
