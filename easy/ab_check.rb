# this requires a...b and b...a
def ABCheck(str)
  str = str.downcase.split("")

  str.each_with_index do |letter, idx|
    if (letter == "a" && str[idx + 4] == "b") || (letter == "b" && str[idx + 4] == "a")
      return true
    end
  end

  return false
end


p ABCheck('lane borrowed') #t
p ABCheck("after badly") #f
p ABCheck("Laura sobs") #t
p ABCheck("bzzza") #t
