class DataManager
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
