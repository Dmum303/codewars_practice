require "spec_helper"
require_relative "../lib/persistence"

RSpec.describe "Persistence" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "returns 0 for 4" do
    expect(persistence(4)).to eq 0
  end

  it "returns 3 for 39" do
    expect(persistence(39)).to eq 3
  end

  it "returns 4 for 999" do
    expect(persistence(999)).to eq 4
  end
end
