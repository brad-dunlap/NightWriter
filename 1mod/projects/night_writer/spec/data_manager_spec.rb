require_relative 'spec_helper'

RSpec.describe DataManager do
  let(:data) {DataManager.new}
  before do
    data.reader = './message.txt'
    data.writer = './braille.txt'
  end
  it 'exists' do
    expect(data).to be_a(DataManager)
  end

  it 'has attributes' do
    data.run
    expect(data.reader).to eq('./message.txt')
    expect(data.writer).to eq('./braille.txt')
  end
end