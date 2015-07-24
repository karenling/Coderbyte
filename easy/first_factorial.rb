def FirstFactorial(num)
  if num == 1
    return 1
  else
    FirstFactorial(num-1) * num
  end
end


p FirstFactorial(4) #= 24
