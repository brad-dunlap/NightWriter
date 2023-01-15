require './lib/braille_to_alpha'
class NightReader
	attr_accessor :input, :output, :dictionary

	def initialize
		@input = ARGV[0]
		@output = ARGV[1]
		@dictionary = BrailleToAlpha.new
	end

	def run
		incoming = File.open(@input, "r")
		text = incoming.read
		translated = File.read('./braille.txt')
		outgoing = File.write(@output, translated)
		p "Created #{output} containing #{text.length} characters"
	end
end

night_reader = NightReader.new
night_reader.run