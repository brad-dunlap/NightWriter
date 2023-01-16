require_relative 'translator'
class BrailleToAlpha < Translator
	attr_accessor :braille_to_text

	def initialize
		super
	end

	def translate_to_text(input)
			@braille_to_text[input.split]		
	end
end