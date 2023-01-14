require_relative 'translator'
class AlphaToBraille < Translator
	attr_reader :text_to_braille

	def initialize
		super
		require 'pry'; binding.pry
	end


end