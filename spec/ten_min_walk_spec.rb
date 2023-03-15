require_relative "../lib/ten_min_walk"

RSpec.describe "Ten min walk" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "returns true for walking backwards and forwards 10 x" do
    expect(ten_min_walk("snsnsnsnsn".chars)).to eq true
  end

  it "returns true for walking backwards and forwards 10 x" do
    expect(ten_min_walk("nsnsnsnsns".chars)).to eq true
  end

  it "returns false for non ten min walk" do
    expect(ten_min_walk("ns".chars)).to eq false
  end

  it "returns false for non ten min walk" do
    expect(ten_min_walk("nsnsnsnsnsnsnsnns".chars)).to eq false
  end

  it "returns false when not correect" do
    expect(ten_min_walk(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])).to eq false
  end



end
