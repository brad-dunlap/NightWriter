require_relative 'translator'
class BrailleToAlpha < Translator
	attr_accessor :braille_to_text

	def initialize
		super
	end

	def translate_to_text(input)
		input_array = []
		input_array << input.split
		split_array = []
    
		input_array.map do |braille|      
      top = (braille.select.with_index{|_,i| (i+3) % 3 == 0}).join
      middle = (braille.select.with_index{|_,i| (i+3) % 3 == 1}).join
      bottom = (braille.select.with_index{|_,i| (i+3) % 3 == 2}).join

      new_braille_array = [top, middle, bottom]
      
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