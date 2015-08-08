def RunLength(str)
  result = ""
  str = str.split("")

  counter = 1
  str.each_with_index do |char, idx|
    if char != str[idx + 1]
      result << "#{counter}#{char}"
      counter = 1 # reset the counter
    else
      counter += 1
    end
  end

  result
end


p RunLength("wwwggopp") # "3w2g1o2p"
p RunLength("aabbcde") # "2a2b1c1d1e"
p RunLength("wwwbbbw") # "3w3b1w"
