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

  it "returns 45  for BB" do
    shop = Shop.new()
    expect(shop.checkout("BB")).to eq 45
  end

  it "returns 75 for BBB" do
    shop = Shop.new()
    expect(shop.checkout("BBB")).to eq 75
  end

   it "returns 40 for CC" do
    shop = Shop.new()
    expect(shop.checkout("CC")).to eq 40
  end

   it "returns 30 for DD" do
    shop = Shop.new()
    expect(shop.checkout("DD")).to eq 30
  end

   it "returns -1 if any lower case letters" do
    shop = Shop.new()
    expect(shop.checkout("a")).to eq -1
  end

   it "returns -1 if any lower case letters" do
    shop = Shop.new()
    expect(shop.checkout("aB")).to eq -1
  end

   it "returns -1 if any lower case letters" do
    shop = Shop.new()
    expect(shop.checkout("aBc")).to eq -1
  end

   it "returns -1 if any lower case letters" do
    shop_two = Shop.new()
    expect(shop_two.checkout("-B8x")).to eq -1
  end

   it "returns -1 if any integer" do
    shop = Shop.new()
    expect(shop.checkout(18)).to eq -1
  end

   it "returns 115 if for ABCD" do
    shop = Shop.new()
    expect(shop.checkout("ABCD")).to eq 115
  end

   it "returns 260 if for AAAAAA" do
    shop = Shop.new()
    expect(shop.checkout("AAAAAA")).to eq 260
  end
end
