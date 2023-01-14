require_relative 'spec_helper'

RSpec.describe NightWriter do
  let(:night_writer) {NightWriter.new}
  before do
    night_writer.input = './message.txt'
    night_writer.output = './braille.txt'
  end
  it 'exists' do
    expect(night_writer).to be_a(NightWriter)
  end

  it 'has attributes' do
    night_writer.run
    expect(night_writer.input).to eq('./message.txt')
    expect(night_writer.output).to eq('./braille.txt')
  end
end