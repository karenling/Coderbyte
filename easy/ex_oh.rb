def ExOh(str)
  letters = {
    "x" => 0,
    "o" => 0
  }
  str.split("").each do |letter|
    if letter == "x"
      letters["x"] += 1
    elsif letter == "o"
      letters["o"] += 1
    end
  end

  if letters["x"] == letters["o"]
    true
  else
    false
  end
end

p ExOh("xooxx")
