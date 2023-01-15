require './lib/alpha_to_braille'
class NightWriter
	attr_accessor :input, :output, :dictionary

	def initialize
		@input = ARGV[0]
		@output = ARGV[1]
		@dictionary = AlphaToBraille.new
	end

	def run
		incoming = File.open(@input, "r")
		text = incoming.read
		translated = dictionary.translate_to_braille(File.read('./message.txt'))	
		outgoing = File.write(@output, translated)
		p "Created #{output} containing #{text.length} characters"
	end
end

# night_writer = NightWriter.new
# night_writer.run