class NightWriter
	attr_accessor :reader, :writer

	def initialize
		@reader = ARGV[0]
		@writer = ARGV[1]
	end

	def run
		incoming = File.open(@reader, "r")
		text = incoming.read
	
		outgoing = File.write(@writer, text)
		p "Created #{@writer} containing #{text.length} characters"
	end
end

# night_writer = NightWriter.new
# night_writer.run


# reader = File.open(ARGV[0], "r")
# text= reader.read

# writer = File.open(ARGV[1], "w")
# writer.write(incoming_text) 
# #manipulate incoming_text
# writer.close

# p "Created #{ARGV[1]} containing #{incoming_text.length} characters"


