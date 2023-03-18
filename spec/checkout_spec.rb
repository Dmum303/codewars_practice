require_relative "../lib/checkout"

RSpec.describe "checkout" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "returns 50 for A" do
    shop = Shop.new()
    expect(shop.checkout("A")).to eq 50
  end

  it "returns 30 for B" do
    shop = Shop.new()
    expect(shop.checkout("B")).to eq 30
  end

   it "returns 20 for C" do
    shop = Shop.new()
    expect(shop.checkout("C")).to eq 20
  end

   it "returns 15 for D" do
    shop = Shop.new()
    expect(shop.checkout("D")).to eq 15
  end

  it "returns 100  for AA" do
    shop = Shop.new()
    expect(shop.checkout("AA")).to eq 100
  end

  it "returns 130  for AAA" do
    shop = Shop.new()
    expect(shop.checkout("AAA")).to eq 130
  end

  it "returns 180  for AAAA" do
    shop = Shop.new()
    expect(shop.checkout("AAAA")).to eq 180
  end

  it "returns 230  for AAAAA" do
    shop = Shop.new()
    expect(shop.checkout("AAAAA")).to eq 230
  end
end
