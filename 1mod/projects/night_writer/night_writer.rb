
input = ARGV[0].chomp
output = ARGV[1].chomp

reader = File.open(ARGV[0], "r")
incoming_text= reader.read
reader.close

writer = File.open(ARGV[1], "w")
writer.write(incoming_text.upcase) 
#manipulate incoming_text
writer.close

p "Created #{output} containing #{incoming_text.size} characters"


