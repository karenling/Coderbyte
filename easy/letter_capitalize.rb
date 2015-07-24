def LetterCapitalize(str)
  capitalized = []

  str.split(" ").each do |word|
    capitalized << word.capitalize
  end

  capitalized.join(" ")
end

p LetterCapitalize("hello world")
