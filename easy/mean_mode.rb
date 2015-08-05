def Mean(arr)
  arr.inject(:+)/arr.length
end

def Mode(arr)
  counting = Hash.new(0)
  arr.each do |num|
    counting[num] += 1
  end

  greatest_num = arr[0]
  greatest_count = 0

  counting.each do |k, v|
    if v > greatest_count
      greatest_count = v
      greatest_num = k
    end
  end

  return nil if greatest_count == 1
  greatest_num
end

def MeanMode(arr)
  return "1" if Mode(arr) == Mean(arr)
  return "0"
end

p MeanMode([5, 3, 3, 3, 1]) #1
p MeanMode([1, 2, 3]) #0
p MeanMode([4, 4, 4, 6, 2]) #1
