require_relative "../lib/reverse_words"

RSpec.describe "Reverse words" do
  it "tests the truth" do
    expect(true).to eq true
  end

  # it "reverses one word" do
  #   expect(reverser("This")).to eq "sihT"
  # end

  # it "reverses one word" do
  #   expect(reverser("is")).to eq "si"
  # end

  # it "reverses one word" do
  #   expect(reverser("hat")).to eq "tah"
  # end

  # it "reverses one word" do
  #   expect(reverser("dog")).to eq "god"
  # end

  # it "reverses two words one space" do
  #   expect(reverser("Dog ball")).to eq "goD llab"
  # end

  # it "reverses several words with one space" do
  #   expect(reverser("This is an example!")).to eq "sihT si na !elpmaxe"
  # end

  # it "reverses several words with > space" do
  #   expect(reverser("double  spaces")).to eq "elbuod  secaps"
  # end

  # fit "desserts stressed" do
  #   expect(reverser("stressed desserts")).to eq "desserts stressed"
  # end
end
