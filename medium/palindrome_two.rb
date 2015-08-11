def PalindromeTwo(str)
  result = ""

  letters = ("a".."z").to_a

  str.downcase.split("").each do |char|
    if letters.include?(char)
      result += char
    end
  end

  return true if result == result.reverse
  return false
end

p PalindromeTwo("Anne, I vote more cars race Rome-to-Vienna") #t
p PalindromeTwo("Noel - sees Leon") #t
p PalindromeTwo("A war at Tarawa!") #t
p PalindromeTwo("A war at Tawa!") #f
