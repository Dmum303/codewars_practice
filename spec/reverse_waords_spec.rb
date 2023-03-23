require_relative "../lib/reverse_words"

RSpec.describe "Reverse words" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "reverses one word" do
    expect(reverser("This")).to eq "sihT"
  end

  it "reverses one word" do
    expect(reverser("is")).to eq "si"
  end

  it "reverses one word" do
    expect(reverser("hat")).to eq "tah"
  end

  it "reverses one word" do
    expect(reverser("dog")).to eq "god"
  end
end
