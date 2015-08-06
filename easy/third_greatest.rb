def ThirdGreatest(strArr)
  # p strArr.sort_by(&:length)
  # strArr.sort_by(&:length)[-3]
  first = ""
  second = ""
  third = ""

  strArr.each do |word|
    if word.length > first.length
      third = second
      second = first
      first = word
    elsif word.length > second.length
      third = second
      second = word
    elsif word.length > third.length
      third = word
    end
  end

  third
end

p ThirdGreatest(["coder","byte","code"]) # "code"
p ThirdGreatest(["abc","defg","z","hijk"]) # "abc"
p ThirdGreatest(["hello", "world", "before", "all"]) # world
p ThirdGreatest(["hello", "world", "after", "all"]) # after
p ThirdGreatest(["hello","world","world"]) # world
p ThirdGreatest(["bat","cat","mat"]) # mat
p ThirdGreatest(["bt","ct","mtyyyy"]) # ct
