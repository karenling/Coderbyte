def isPrime?(num)
  return false if num == 0 || num == 1

  i = 2
  until i == num
    return false if num % i == 0
    i += 1
  end

  return true
end

# p isPrime?(1) #f
# p isPrime?(2) #t
# p isPrime?(4) #f

def PrimeMover(num)
  counter = 0
  i = 0

  until counter == num
    if isPrime?(i)
      counter += 1
      if counter == num
        p [i, counter, num]
        return i
      end
    end
    i += 1
  end
end

p PrimeMover(16) #53
p PrimeMover(9) #23
p PrimeMover(100) #541
p PrimeMover(500) #3571
p PrimeMover(1000) #7919
p PrimeMover(312) #2069
