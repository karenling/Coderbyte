def count_up_all_letters(words)
  words_hash = {}

  words.each do |i|
    words_hash[i] = {}
    split_word = i.split("")
    split_word.each do |letter|
      if words_hash[i].has_key?(letter)
        words_hash[i][letter] += 1
      else
        words_hash[i][letter] = 1
      end
    end
  end

  words_hash
end

def LetterCountI(str)
  words = str.split(" ")

  words_hash = count_up_all_letters(words)

  greatest = words_hash.first.first
  greatest_num = 1

  words_hash.each do |k, v|
    v.each do |k1, v1|
      if v1 > greatest_num
        greatest_num = v1
        greatest = k
      end
    end
  end

  return "-1" if greatest_num == 1

  greatest
end


p LetterCountI("Hello apple pie")

p LetterCountI("No words")
