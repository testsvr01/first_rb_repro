secret_number = rand(9)

puts "guess a number a number 0-8"

guess = gets.chomp

if secret_number == guess

  puts "correct"
else secret_number != guess
  puts "try again"
end
