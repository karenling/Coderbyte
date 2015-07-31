def Palindrome(str)
  str = str.split(" ").join("")
  return true if str == str.reverse
  false
end
