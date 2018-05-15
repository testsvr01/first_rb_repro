@array = ["te1am", "te2am", "te3am", "te4am"]
bcounter = @array.count
			while bcounter
			@array.each_with_index do |val, index|
			indexp1 =index + 1
			bteam1 = @array.first
	   		bteam2 = @array.last
	   		print "#{indexp1} . #{bteam1} vs #{indexp1} . #{bteam2} \n "
	   		@array.pop
	   		@array.shift
	  	 	end
	   		#puts array.first  /this make sure the value is getting passed
			
			#puts array.last /this makes sure the value is getting passed
	   		
	   		bcounter -= 1
	   		#puts "#{bcounter}" /this makes sure the value is getting passed
	   		break if bcounter == 0 
	   	end