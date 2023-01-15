# require_relative 'spec_helper'
require './lib/translator'

RSpec.describe Translator do
  let(:trans) {Translator.new}

	describe '#initialize' do
		it 'exists' do
			expect(trans).to be_instance_of(Translator)
		end

		it 'has attributes' do
			expect(trans.text_to_braille["a"]).to eq(["0.", "..", ".."])
		end
	end
end