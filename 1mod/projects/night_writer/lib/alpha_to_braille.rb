require_relative 'translator'
class AlphaToBraille < Translator
	attr_accessor :text_to_braille

	def initialize
		super
	end
	
	def translate_to_braille(input)
		top_row = []
		middle_row = []
		bottom_row = []
		
		input.chars.each do |char|
				@text_to_braille.each do |k,v|
					if k == char
						v.each do |key, value|
							if key == :top
								top_row << value
							elsif key == :middle
								middle_row << value
							else
								bottom_row << value							
						end
					end
				end
			end
		end
		nested = [top_row, middle_row, bottom_row]
		nested.map(&:join).join("\n")
	end
end