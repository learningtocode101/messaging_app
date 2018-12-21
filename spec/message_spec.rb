require 'message'
require './config/data_mapper'
describe Message do
  subject(:message) { Message.create(:content => "This is a very long test") }
  it "knows it's content" do
    expect(message.content).to eq "This is a very long test"
  end

  it "knows it's time" do
    expect(message.display_time).to eq Time.now.strftime("%d-%m-%Y | %H:%M")
  end

  it "returns preview" do
    expect(message.preview).to eq ('This is a very long ')
  end
end
