# recursive way gives same answer as iterative way, but doesn't pass coderbyte?
# def SimpleAdding(num)
#   return num if num == 0
#   SimpleAdding(num - 1) + num
# end

def SimpleAdding(num)
  total = 0
  until num == 0
    total += num
    num -= 1
  end

  total
end

p SimpleAdding(12) #78
p SimpleAdding(45) #1035
p SimpleAdding(999) #499500
