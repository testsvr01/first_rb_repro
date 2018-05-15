puts "give me two numbers and I will check to see if i can divide them"
puts "give me the numerator"
numerator=gets.chomp.to_i
puts "give me the divisor"
divisor=gets.chomp.to_i


if divisor.zero?
  puts "Can't divide by zero"
  exit
end

remainder = numerator % divisor
remainder2 = numerator.to_f / divisor.to_f

if remainder.zero?
  puts "#{numerator} is divisble by #{divisor}"
elsif remainder2 
  puts "#{numerator} is not divisble by #{divisor}. Remainder is #{remainder2}" 
end