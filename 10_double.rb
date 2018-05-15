puts "pick a number 1 through 10"
number = gets.chomp.to_i
until number > 10
  puts number * 2
  number +=1
end
