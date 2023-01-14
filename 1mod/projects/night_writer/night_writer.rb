reader = File.open(ARGV[0])
incoming_text= reader.read

writer = File.open(ARGV[1], "w")
writer.write(incoming_text) 
#manipulate incoming_text
writer.close

p "Created #{ARGV[1]} containing #{incoming_text.length} characters"


