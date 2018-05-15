
selection = ""
while selection != "0"
		

				puts "Welcome to my slug fest generator Enter a selection."
				puts "1. Enter your Fighters"
				puts "2. List Figthers"
				puts "3. List matchups"
				puts "0  exit"
				selection = gets.chomp
			 if selection == "1" 
			 	 @team_array=[]
   				  puts "enter your Fighters name"
		   			loop do
		   				t1 = gets.chomp.to_s
		   				puts "enter the next Fighter. \n To finish entering Fighters just hit return"
		   				break if t1 == ''
		   				@team_array << t1
		   			end
		   		system 'cls'
		   	elsif selection == "2"
		   		system 'cls'
		   		@team_array.each_with_index do |val, index|
	   			indexp1 =index + 1
	   			puts "#{indexp1} #{val}"
	   			end
		   		
		   	elsif selection == "3"
		   		system 'cls'
		   		puts "match ups are"
	   			if @team_array.length.odd? 
	   				bye = @team_array.first
	   				puts "(1)#{bye} vs has a bye"
	   				bteam_array = @team_array.map(&:clone)
	   				bcounter = bteam_array.count
					while bcounter
						bteam_array.each_with_index do |val, index|
						indexp1 =index + 2
						bteam1 = bteam_array[1]
	   					bteam2 = bteam_array.last
		   				bteam_array.pop
	   					bteam_array.shift
	   					break if bteam_array.length == 0
	   					print "#{indexp1} . #{bteam1} vs #{indexp1} . #{bteam2} \n"
	  	 				end
	   				bcounter -= 1
	   				#puts "#{bcounter}" /this makes sure the value is getting passed
	   				break if bcounter == 1 
	   				end
	   			elsif @team_array.length.even?
	   					bteam_array = @team_array.map(&:clone)
	   					bcounter = bteam_array.count
	   							while bcounter
									bteam_array.each_with_index do |val, index|
									indexp1 =index + 1
									bteam1 = bteam_array.first
	   								bteam2 = bteam_array.last
	   								print "#{indexp1} . #{bteam1} vs #{indexp1} . #{bteam2} \n "
	   								bteam_array.pop
	   								bteam_array.shift
	  	 							end   		
	   					bcounter -= 1
	   					#puts "#{bcounter}" /this makes sure the value is getting passed
	   					break if bcounter == 0 
	   							end

	   		end
	   	elsif selection == "0"
	   		puts "good bye"
		   	else selection !=("0..3")
		   		puts "incorrect entry please enter a selection listed below"
			end	
end	   	