require_relative 'translator'
class AlphaToBraille < Translator
	attr_accessor :text_to_braille

	def initialize
		super
	end
	
	def translate_to_braille(input)
		nested = input.downcase.chars.filter_map do |char|
			@text_to_braille[char]
		end
		split = nested.each_slice(40).map do |slice|
			slice.transpose.map(&:join).join("\n")
		end.join("\n\n")
	end
end
