def SimpleSymbols(str)
  letters = ("a".."z").to_a
  str = str.split("")
  str.each_with_index do |letter, idx|
    if letters.include?(letter)
      return false if idx - 1 < 0 || idx + 1 > str.length - 1
      if str[idx-1] != "+" || str[idx+1] != "+"
        return false
      end
    end
  end
  return true
end

p SimpleSymbols("+d+=3=+s+") #t
p SimpleSymbols("f++d+") #f


# def SimpleSymbols(str)
#   letters = ("a".."z").to_a
# => coderbyte's ruby version doesn't allow this
#   str.split("").each_with_index do |chr, idx|
#     if letters.include?(chr)
#       return false if (idx-1 < 0) || (idx+1 > str.length - 1)
#       if !(str[idx-1] == "+" && str[idx+1] == "+")
#         return false
#       end
#     end
#   end
#
#   return true
# end
