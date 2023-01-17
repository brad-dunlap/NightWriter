require_relative 'spec_helper'

RSpec.describe NightReader do
  before do
    night_reader.input = './braille.txt'
    night_reader.output = './message.txt'
  end
  let(:night_reader) {NightReader.new}
	let(:braille_file) { File.open(night_reader.input, "r") }

  it 'exists' do
    expect(night_reader).to be_a(NightReader)
  end

  it 'has attributes' do
    night_reader.run
    expect(night_reader.input).to eq('./braille.txt')
    expect(night_reader.output).to eq('./message.txt')
  end

	it 'runs' do
		expect(File).to receive(:open).with(night_reader.input, "r").and_return(braille_file)
		night_reader.run		
	end
end