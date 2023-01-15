require_relative 'translator'
class BrailleToAlpha < Translator
	attr_accessor :braille_to_text

	def initialize
		super
	end
end