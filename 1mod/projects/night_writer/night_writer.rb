
input = ARGV[0].chomp
output = ARGV[1].chomp

handle = File.open(ARGV[0], "r")
incoming_text= handle.read
handle.close


writer = File.open(ARGV[1], "w")
writer.write
writer.close

	p "Created #{output} containing #{incoming_text.size} characters"


