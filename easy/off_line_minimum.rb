def OffLineMinimum(strArr)
  final = []
  strArr.each_with_index do |char, idx|
    if char == "E"
      smallest = strArr[0..idx].min
      final << smallest
      min_idx = strArr.index(smallest)
      strArr[min_idx] = "E"
    end
  end
  final.join(",")
end

p OffLineMinimum(["5","4","6","E","1","7","E","E","3","2"]) # "4,1,5".
p OffLineMinimum(["1","2","E","E","3"]) # "1,2"
p OffLineMinimum(["4","E","1","E","2","E","3","E"]) # "4,1,2,3"
