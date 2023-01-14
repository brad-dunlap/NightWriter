
		@input = ARGV[0].chomp
		@output = ARGV[1].chomp
		
	read_file= File.read('./lib/#{input}')

	output_count = output.count

	p "Created #{output} containing #{read_file.size} characters"


