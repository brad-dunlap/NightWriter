require_relative 'spec_helper'

RSpec.describe NightWriter do
  let(:night_writer) {NightWriter.new}
  before do
    night_writer.reader = './message.txt'
    night_writer.writer = './braille.txt'
  end
  it 'exists' do
    expect(night_writer).to be_a(NightWriter)
  end

  it 'has attributes' do
    night_writer.run
    expect(night_writer.reader).to eq('./message.txt')
    expect(night_writer.writer).to eq('./braille.txt')
  end
end