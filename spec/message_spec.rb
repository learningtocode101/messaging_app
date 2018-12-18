require 'message'

describe Message do
  subject(:message) { described_class.new("This is a very long test") }
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
