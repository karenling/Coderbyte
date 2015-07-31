def Arithmetic(arr)
  diff = arr[1] - arr[0]

  i = 0
  while i < arr.length - 1
    return false if arr[i + 1] - arr[i] != diff
    i += 1
  end

  return true
end

def Geometric(arr)
  diff = arr[1] / arr[0]

  i = 0
  while i < arr.length - 1
    return false if arr[i + 1] / arr[i] != diff
    i += 1
  end

  return true
end

def ArithGeo(arr)
  return "Arithmetic" if Arithmetic(arr)
  return "Geometric" if Geometric(arr)
  return "-1"
end


p ArithGeo([2, 4, 6, 8])
p ArithGeo([2, 6, 18, 54])
p ArithGeo([2, 6, 18, 5])
