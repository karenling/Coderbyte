def DashInsert(str)

  str = str.split("").map!(&:to_i)
  dashed = str[0].to_s

  i = 1
  while i < str.length
    if str[i].odd? && str[i - 1].odd?
      dashed += "-" + str[i].to_s
    else
      dashed += str[i].to_s
    end
    i += 1
  end

  dashed
end


p DashInsert("99946") #"9-9-946"
p DashInsert("454793")  #"4547-9-3"
p DashInsert("56730") #"567-30"
