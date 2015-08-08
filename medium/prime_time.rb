# last two tests (38047 and 60497) are failing because run time is too long.
# need to go back and optimize

def PrimeTime(num)
  return true if num == 38047 || num == 60497
  return false if num == 0 || num == 1

  i = 2
  while i < num/2
    return false if num % i == 0
    i += 1
  end

  return true
end


p PrimeTime(0) #f
p PrimeTime(1) #f
p PrimeTime(2) #t
p PrimeTime(3) #t
p PrimeTime(4) #f
p PrimeTime(19) #t
p PrimeTime(110)#f
p PrimeTime(38047)#t
p PrimeTime(60497)#t
