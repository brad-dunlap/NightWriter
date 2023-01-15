class Translator
	attr_reader :text_to_braille, :braille_to_text

	def initialize
		@text_to_braille = {
			["0.", "..", ".."] => "a"
			["0.", "0.", ".."] => "b"
			["00", "..", ".."] => "c"
			["00", ".0", ".."] => "d"
			["0.", ".0", ".."] => "e"
			["00", "0.", ".."] => "f"
			["00", "00", ".."] => "g"
			["0.", "00", ".."] => "h"
			[".0", "0.", ".."] => "i"
			[".0", "00", ".."] => "j"
			["0.", "..", "0."] => "k"
			["0.", "0.", "0."] => "l"
			["00", "..", "0."] => "m"
			["00", ".0", "0."] => "n"
			["0.", ".0", "0."] => "o"
			["00", "0.", "0."] => "p"
			["00", "00", "0."] => "q"
			["0.", "00", "0."] => "r"
			[".0", "0.", "0."] => "s"
			[".0", "00", "0."] => "t"
			["0.", "..", "00"] => "u"
			["0.", "0.", "00"] => "v"
			[".0", "00", ".0"] => "w"
			["00", "..", "00"] => "x"
			["00", ".0", "00"] => "y"
			["0.", ".0", "00"] => "z"
			["..", "..", ".."] => " "
			["..", "00", "0."] => "!"
      ["..", "..", "0."] => "\'"
      ["..", "..", "00"] => "-" 
      ["..", "00", ".0"] => "."
      ["..", "0.", "00"] => "?"
      ["..", ".0", "00"] => "\""
      ["..", "0.", ".."] => ","
      ["..", "0.", "0."] => ";"
		}
	end

	@braille_to_text
	{
			"a" => ["0.", "..", ".."],
			"b" => ["0.", "0.", ".."],
			"c" => ["00", "..", ".."],
			"d" => ["00", ".0", ".."],
			"e" => ["0.", ".0", ".."],
			"f" => ["00", "0.", ".."],
			"g" => ["00", "00", ".."],
			"h" => ["0.", "00", ".."],
			"i" => [".0", "0.", ".."],
			"j" => [".0", "00", ".."],
			"k" => ["0.", "..", "0."],
			"l" => ["0.", "0.", "0."],
			"m" => ["00", "..", "0."],
			"n" => ["00", ".0", "0."],
			"o" => ["0.", ".0", "0."],
			"p" => ["00", "0.", "0."],
			"q" => ["00", "00", "0."],
			"r" => ["0.", "00", "0."],
			"s" => [".0", "0.", "0."],
			"t" => [".0", "00", "0."],
			"u" => ["0.", "..", "00"],
			"v" => ["0.", "0.", "00"],
			"w" => [".0", "00", ".0"],
			"x" => ["00", "..", "00"],
			"y" => ["00", ".0", "00"],
			"z" => ["0.", ".0", "00"],
			" " => ["..", "..", ".."],
			"!" => ["..", "00", "0."],
      "\'" => ["..", "..", "0."],
      "-" => ["..", "..", "00"],
      "." => ["..", "00", ".0"],
      "?" => ["..", "0.", "00"],
      "\"" => ["..", ".0", "00"],
      "," => ["..", "0.", ".."],
      ";" => ["..", "0.", "0."]
		}
end