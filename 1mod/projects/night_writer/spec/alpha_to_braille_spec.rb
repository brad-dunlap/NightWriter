# require_relative 'spec_helper'
require './lib/alpha_to_braille'

RSpec.describe AlphaToBraille do
  let(:alpha) {AlphaToBraille.new}
	let(night_writer) {NightWriter.new}
	input = File.read('./message.txt')
	describe '#initialize' do
		it 'exists' do
			expect(alpha).to be_instance_of(AlphaToBraille)
		end

		it 'has attributes' do
			expect(alpha.text_to_braille["a"]).to eq({top: "0.", middle: "..", bottom: ".."})
		end
	end

	describe '#translate_to_braille' do
		it 'translates a character to braille' do
			expect(alpha.translate_to_braille(input)).to eq(nil)
		end
	end
end