require 'message'
require './config/data_mapper'

describe Message do
  subject(:message) { Message.create(:content => 'This is a very long test') }
  it 'returns message content' do
    expect(message.content).to eq 'This is a very long test'
  end

  it 'returns message time' do
    expect(message.display_time).to eq Time.now.strftime('%d-%m-%Y | %H:%M')
  end

  it 'returns preview' do
    expect(message.preview).to eq 'This is a very long '
  end
end
