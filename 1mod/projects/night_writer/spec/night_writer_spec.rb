require_relative 'spec_helper'

RSpec.describe NightWriter do
	let(:nightwriter) { NightWriter.new(input, output)}
	
	describe '#initialize' do
		it 'exists' do
			expect(nightwriter).to be_a(NightWriter)
		end
	end



end

