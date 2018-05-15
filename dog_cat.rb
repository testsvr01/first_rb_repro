puts "dogs or cats?"
answer = gets.chomp

if answer.downcase == 'dogs' || answer.downcase =='dog'
  puts "bow bow"
else
  puts "meeeeeow"
end
