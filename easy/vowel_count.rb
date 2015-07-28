def VowelCount(str)
  vowels = %w(a e i o u)
  vowels_count = 0

  str.downcase.split("").each do |letter|
    if vowels.include?(letter)
      vowels_count += 1
    end
  end

  vowels_count
end

p VowelCount("All cows eat grass") #5
