require_relative 'translator'
class BrailleToAlpha < Translator
	attr_accessor :braille_to_text

	def initialize
		super
	end

	def translate_to_text(input)
		input_array = []
		input_array << input.split
		array_with_three_rows = []
    split_array = []
    
		input_array.map do |braille|      
      top_row = (braille.select.with_index{|_,i| (i+3) % 3 == 0}).join
      middle_row = (braille.select.with_index{|_,i| (i+3) % 3 == 1}).join
      bottom_row = (braille.select.with_index{|_,i| (i+3) % 3 == 2}).join

      new_braille_array = [top_row, middle_row, bottom_row]
      new_braille_array.each do |row|
				split_array << row.chars.each_slice(2).map(&:join)
			end
		end
		
		translated = split_array.transpose.map do |letter|
			@braille_to_text[letter]
		end
		translated.join
	end			
end