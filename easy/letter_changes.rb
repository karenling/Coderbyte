def LetterChanges(str)
  letters = ("a".."z").to_a
  vowels = %w(a e i o u)
  changed = []

  str.split("").each do |letter|
    if letters.include?(letter)
      orig_idx = letters.index(letter)
      new_idx = (orig_idx + 1) % 26
      new_letter = letters[new_idx]
      if vowels.include?(new_letter)
        new_letter = new_letter.capitalize
      end
      changed << new_letter
    else
      changed << letter
    end
  end

  changed.join("")
end

p LetterChanges("coderbyte")
p LetterChanges("hello*3")
p LetterChanges("fun times!")
