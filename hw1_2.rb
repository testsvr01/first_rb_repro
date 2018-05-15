
puts "give me a score and I will give you a grade"


score =gets.chomp.to_i

case score

when 90..100 then puts "A"
when 80..89 then puts "B"
when 70..79 then puts "C"
when 60..69 then puts "D"
end

if score < 60  
  puts "F"
end

if score > 100
  puts " #{score} is above 100 wrong answer"
end