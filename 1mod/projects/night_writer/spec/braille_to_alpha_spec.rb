# require_relative 'spec_helper'
require './lib/braille_to_alpha'

RSpec.describe BrailleToAlpha do
  let(:braille) {BrailleToAlpha.new}
	input = File.read('./braille.txt')
	output = File.read('./message.txt')

	describe '#initialize' do
		it 'exists' do
			expect(braille).to be_instance_of(BrailleToAlpha)
		end
		it 'has attributes' do
			expect(braille.braille_to_text[["0.", "..", ".."]]).to eq("a")
		end
	end
end