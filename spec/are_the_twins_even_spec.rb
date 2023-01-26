require_relative "../lib/are_the_twins_even"

RSpec.describe "are_the_twins_even" do
  it "tests the truth" do
    expect(true).to eq(true)
  end

  xit "tests 2 digit array" do
    expect(even_twins([6,2])).to eq 1
  end

  xit "tests 2 digit array" do
    expect(even_twins([6,3])).to eq 0
  end

    it "tests 5 digit array" do
    expect(even_twins([5,6,7,8,9])).to eq 3
  end
end
