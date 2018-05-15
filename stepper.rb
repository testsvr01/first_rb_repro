array = ["team", "team", "team", "team"]
bcounter = array.count
			while bcounter
				bteam1 = array.first.index
	   			bteam2 = array.last.index
	   			print "#{bteam1} vs #{bteam2} \n"
	   			array.shift
	   			#show = array.shift
	   			#puts "#{show}"
	   			bcounter -= 1
	   			break if bcounter == 0
	   		end	   		