require_relative "../lib/codility"

RSpec.describe "dot_calculator" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "returns 1" do
    expect(postitive([1, 3, 6, 4, 1, 2])).to eq 5
  end

  it "returns 1" do
    expect(postitive([-5, -10])).to eq 1
  end

end
