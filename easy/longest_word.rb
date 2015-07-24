def LongestWord(sen)
  puncts = %w(& ! / : ~)

  puncts.each do |punctuation|
    sen = sen.delete(punctuation)
  end

  words = sen.split(" ")
  longest = words.first

  words.each do |word|
    if word.length > longest.length
      longest = word
    end
  end

  longest
end

p LongestWord("fun&!! time")
p LongestWord("I love dogs")
p LongestWord("a confusing /:sentence:/[ this is not!!!!!!!~")
