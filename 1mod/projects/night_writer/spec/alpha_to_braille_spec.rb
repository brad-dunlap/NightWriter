# require_relative 'spec_helper'
require './lib/alpha_to_braille'

RSpec.describe AlphaToBraille do
  let(:alpha) {AlphaToBraille.new}
	
	describe '#initialize' do
		it 'exists' do
			expect(alpha).to be_instance_of(AlphaToBraille)
		end

		it 'has attributes' do
			expect(alpha.text_to_braille["a"]).to eq(["0.", "..", ".."])
		end
	end

	describe '#translate_to_braille' do
		it 'translates text to braille' do
			expect(alpha.translate_to_braille("hello")).to eq("0.0.0.0.0.\n00.00.0..0\n....0.0.0.")
		end
	end
end