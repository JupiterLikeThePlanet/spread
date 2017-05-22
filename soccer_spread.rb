spread_array = []

File.open("soccer.dat") do |f|
	while (line = f.gets)
		collected_data = []
		ary = line.split


		if (ary.length != nil) && (ary.length > 1)
			team = []
			if ary[0].include?(".")
				team << ary[1]
				team << ary[-2]
				team << ary[-4]
			end
			spread_array << team
		end

		spread_array.each_with_index do |array, index|
			if array.length === 0
				spread_array.delete(array)
			end
		end

	end
	
end


min_difference = spread_array.min_by {|arr| (arr[1].to_i - arr[2].to_i).abs }
puts "The team with the minimum spread is #{min_difference[0]}"