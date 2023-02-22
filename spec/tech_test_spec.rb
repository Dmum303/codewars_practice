require_relative "../lib/tech_test"

RSpec.describe "a specification" do
  it "should pass" do
    expect(true).to eq(true)
  end

  it "tests diagonal problem" do
    expect(diagonalDifference([[11, 2, 4], [4, 5, 6], [10, 8, -12]])).to eq(15)
  end

end
