def NumberAddition(str)
  numbers = []
  numbers = (0..9).to_a.map!(&:to_s)

  str = str.split("").map do |char|
    if numbers.include?(char)
      char
    else
      " "
    end
  end

  str.join("").split(" ").map!(&:to_i).inject(:+)
end

p NumberAddition("88Hello 3World!") #91
p NumberAddition("75Number9") #84
p NumberAddition("10 2One Number*1*") #13
