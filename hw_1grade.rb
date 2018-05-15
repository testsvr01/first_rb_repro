puts "give me a score a will give you a grade"
 score = gets.chomp.to_i 


result = case score 
	when (59..50) then "FAIL"
	when (100..90) then "A"
	when (89..80) then "B"
	when (79..70) then "C"
	when (69..60) then "D"
    end

puts result 