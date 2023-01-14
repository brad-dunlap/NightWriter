# require_relative 'spec_helper'
require './lib/alpha_to_braille'

RSpec.describe AlphaToBraille do
  let(:alpha) {AlphaToBraille.new}

	describe '#initialize' do
		it 'exists' do
			expect(alpha).to be_instance_of(AlphaToBraille)
		end

		it 'has attributes' do
			expect(alpha.text_to_braille["a"]).to eq({top: "0.", middle: "..", bottom: ".."})
		end
	end
end