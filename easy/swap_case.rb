def SwapCase(str)
  str = str.split("").map do |char|
    if char.downcase == char
      char.upcase
    elsif char.upcase == char
      char.downcase
    end
  end

  str.join("")
end

p SwapCase("Hello World") # "hELLO wORLD"
p SwapCase("Hello-LOL") # "hELLO-lol"
p SwapCase("Sup DUDE!!?") # "sUP dude!!?"
