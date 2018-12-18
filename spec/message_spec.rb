require 'message'

describe Message do
  subject(:message) { described_class.new("Test") }
  it "knows it's content" do
    expect(message.content).to eq "Test"
  end

  it "knows it's time" do
    expect(message.time).to eq Time.now.strftime("%d-%m-%Y | %H:%M")
  end
end
