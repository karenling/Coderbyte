def Arithmetic(arr)
  i = 0
  diff = arr[1] - arr[0]
  while i < arr.length
    if arr[i + 1] - arr[i] == diff
      next
    else
      geometric
    i += 2
  end
end


def ArithGeo(arr)



end


p Arithmetic([2, 4, 6, 8])
p Arithmetic([2, 6, 18, 54])
