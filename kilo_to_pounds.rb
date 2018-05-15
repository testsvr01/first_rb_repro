def kilo_to_pound 
	pounds * 0.45359237
	
end

def pounds_to_kilos
	kilos / 0.45359237
	
end

puts "what are you converting kg or lb"
w =gets.chomp

if w == "kg"
	puts "give me the number kilos to convert to lb"
	k =gets.chomp.to_i
	kilo_to_pound("#{k}").to_s
else w == "lb"
	puts "give me the number of pounds to convert to kg"
	l =gets.chomp.to_i
	puts pounds_to_kilos(l).to_s
end

