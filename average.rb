
a =[100,78,50,60,98,91,60]
a.sort


for number in a.sort
	puts "#{number}, "
end

average = a.reduce(:+) / a.size.to_f

msg2 = "The average of the scores are \n"
printf msg2 
print "#{average}"
