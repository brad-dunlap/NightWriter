# require_relative 'spec_helper'
require './lib/braille_to_alpha'

RSpec.describe BrailleToAlpha do
  let(:braille) {BrailleToAlpha.new}
	input = File.read('./braille.txt')
	output = File.read('./alpha.txt')
	describe '#initialize' do
		it 'exists' do
			expect(braille).to be_instance_of(BrailleToAlpha)
		end
	end
end