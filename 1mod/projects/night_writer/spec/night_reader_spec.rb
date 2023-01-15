require_relative 'spec_helper'

RSpec.describe NightReader do
  let(:night_reader) {NightReader.new}
  before do
    night_reader.input = './braille.txt'
    night_reader.output = './message.txt'
  end
  it 'exists' do
    expect(night_reader).to be_a(NightReader)
  end

  it 'has attributes' do
    night_reader.run
    expect(night_reader.input).to eq('./braille.txt')
    expect(night_reader.output).to eq('./message.txt')
  end
end