def ArrayAdditionI(arr)
  max_val = arr.max
  arr.delete(max_val)
  len = arr.length

  len.times do |i| # if len is 4, it goes from 0, 1, 2, 3
    i += 1 # need to make sure we have 1, 2, 3, 4
    arr.combination(i).to_a.each do |combo|
      return true if combo.inject(:+) == max_val
    end
  end

  return false
end


p ArrayAdditionI([5,7,16,1,2]) #f
p ArrayAdditionI([3,5,-1,8,12]) # t
p ArrayAdditionI([4, 6, 23, 10, 1, 3]) #t

p ArrayAdditionI([10,20,30,40,100]) #t
p ArrayAdditionI([31,2,90,50,7]) #t
