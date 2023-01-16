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
		translated = dictionary.translate_to_text(text)
		outgoing = File.write(@output, translated)
		p "Created #{output} containing #{text.delete("\n").length} characters"
	end
end

night_reader = NightReader.new
night_reader.run