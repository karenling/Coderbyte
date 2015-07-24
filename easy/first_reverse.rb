def FirstReverse(str)
  reversed = ""

  i = str.length - 1
  until i < 0
    reversed << str[i]
    i -= 1
  end

  reversed
end

p FirstReverse("I Love Code")
