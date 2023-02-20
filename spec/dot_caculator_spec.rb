require_relative "../lib/dot_calculator"

RSpec.describe "dot_calculator" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "returns .. for addition" do
    expect(dot_calculator(". + .")).to eq ".."
  end

    it "returns ... for addition" do
    expect(dot_calculator(".. + .")).to eq "..."
  end

  it "returns correct num of dots for larger addition" do
    expect(dot_calculator("..... + ...............")).to eq "...................."
  end

  it "works for subtraction" do
    expect(dot_calculator(* "..... - ...")).to eq ".."
  end

  it "works for a larger subtraction" do
    expect(dot_calculator("..... - .")).to eq "...."
  end

  it "checks that input is string" do
    expect{dot_calculator(12345)}.to raise_error "Input is not string!"
  end

  it "checks *" do
     expect(dot_calculator("..... * ...")).to eq "..............."
  end

  it "checks division" do
    expect(dot_calculator("..... // ..")).to eq ".."
  end

  it "returns "" if result < 1" do
    expect(dot_calculator(". // ..")).to eq ""
  end

    it "returns "" if result < 1" do
    expect(dot_calculator(".. - ..")).to eq ""
  end
end
