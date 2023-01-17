require_relative 'spec_helper'

RSpec.describe NightWriter do
  before do
    night_writer.input = './message.txt'
    night_writer.output = './braille.txt'
  end

	let(:night_writer) { NightWriter.new }
	let(:text_file) { File.open(night_writer.input, "r") }
	
  it 'exists' do
    expect(night_writer).to be_a(NightWriter)
  end

  it 'has attributes' do
    night_writer.run
    expect(night_writer.input).to eq('./message.txt')
    expect(night_writer.output).to eq('./braille.txt')
		expect(night_writer.dictionary).to be_instance_of(AlphaToBraille)
  end

	it 'runs' do
		expect(File).to receive(:open).with(night_writer.input, "r").and_return(text_file)
		night_writer.run
	end
end