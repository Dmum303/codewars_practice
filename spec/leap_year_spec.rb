require_relative '../lib/leap_year'

RSpec.describe "Leap year" do
  it "test the truth" do
    expect(true).to eq true
  end

  it "Checks that leap year divides by 400" do
    expect(leap_year(2000, 2000)).to eq [2000]
  end

  it "Checks that leap year divides by 400" do
    expect(leap_year(400, 400)).to eq [400]
  end

  it "Checks that leap year divides by 400" do
    expect(leap_year(400, 401)).to eq [400]
  end

  it "Checks that leap year divides by 400" do
    expect(leap_year(2000, 2001)).to eq [2000]
  end

  it "Checks that leap year divides by 400 and 4" do
    expect(leap_year(2000, 2004)).to eq [2000, 2004]
  end

    it "Checks that leap year not 100" do
    expect(leap_year(1900, 1900)).to eq []
  end

      it "Checks that leap year not 100" do
    expect(leap_year(2000, 2012)).to eq [2000, 2004, 2008, 2012]
  end
end
