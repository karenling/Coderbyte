def PowersofTwo(num)
  i = 1
  current = 2
  until current >= num
    current = 2**i
    i += 1
  end

  if current == num
    return true
  else
    return false
  end
end

p PowersofTwo(4) #t
p PowersofTwo(124) #f
