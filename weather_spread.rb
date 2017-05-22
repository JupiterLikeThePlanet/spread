spread_array = []


File.open("w_data.dat") do |f|
	while (line = f.gets)
		collected_data = []
		ary = line.split

		ary.map! do |index|

			if index[/([A-z])\w+/]
				
				next

			elsif index[/\d\d[\.]/] || index[/\d[\.]/] 

				next
				
			else

				index[/[^*]+/]
			
			end
		end


		unless ary[0..2].include?(nil)
			collected_data << ary[0..2]
			collected_data.flatten!
		end
		

		spread_array << collected_data
		
	end


	spread_array.each_with_index do |array, index|
		if array.length === 0
			spread_array.delete(array)
		end
	end


end


min_difference = spread_array.min_by {|arr| (arr[1].to_i - arr[2].to_i).abs }
puts "The day with the minimum spread occurs on day #{min_difference[0]} of the month"












