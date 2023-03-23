require_relative "../lib/reverse_words"

RSpec.describe "Reverse words" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "reverses one word" do
    expect(reverser("This")).to eq "sihT"
  end
end
