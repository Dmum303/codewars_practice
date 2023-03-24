require_relative "../lib/checkout"

RSpec.describe "checkout" do
  it "returns 50 for A" do
    expect(Checkout.checkout("A")).to eq 50
  end

  it "returns 30 for B" do
    expect(Checkout.checkout("B")).to eq 30
  end

  it "returns 20 for C" do
    expect(Checkout.checkout("C")).to eq 20
  end

  it "returns 15 for D" do
    expect(Checkout.checkout("D")).to eq 15
  end

  it "Returns -1 if any letters are lowercase, single char" do
    expect(Checkout.checkout("a")).to eq -1
  end
  it "Returns -1 if any letters are lowercase, multiple char" do
    expect(Checkout.checkout("BAaC")).to eq -1
  end

  it "returns 100  for AA" do
    expect(Checkout.checkout("AA")).to eq 100
  end

  it "returns 130  for AAA" do
    expect(Checkout.checkout("AAA")).to eq 130
  end

  it "returns 180  for AAAA" do
    expect(Checkout.checkout("AAAA")).to eq 180
  end

  it "returns 230  for AAAAA" do
    expect(Checkout.checkout("AAAAA")).to eq 230
  end

  it "returns 45  for BB" do
    expect(Checkout.checkout("BB")).to eq 45
  end

  it "returns 75 for BBB" do
    expect(Checkout.checkout("BBB")).to eq 75
  end

  it "returns 40 for CC" do
    expect(Checkout.checkout("CC")).to eq 40
  end

  it "returns 30 for DD" do
    expect(Checkout.checkout("DD")).to eq 30
  end

  #  it "returns -1 if any lower case letters" do
  #   shop = Shop.new()
  #   expect(shop.checkout("a")).to eq -1
  # end

  #  it "returns -1 if any lower case letters" do
  #   shop = Shop.new()
  #   expect(shop.checkout("aB")).to eq -1
  # end

  #  it "returns -1 if any lower case letters" do
  #   shop = Shop.new()
  #   expect(shop.checkout("aBc")).to eq -1
  # end

  #  it "returns -1 if any lower case letters" do
  #   shop_two = Shop.new()
  #   expect(shop_two.checkout("-B8x")).to eq -1
  # end

  #  it "returns -1 if any integer" do
  #   shop = Shop.new()
  #   expect(shop.checkout(18)).to eq -1
  # end

  #  it "returns 115 if for ABCD" do
  #   shop = Shop.new()
  #   expect(shop.checkout("ABCD")).to eq 115
  # end

  #  it "returns 260 if for AAAAAA" do
  #   shop = Shop.new()
  #   expect(shop.checkout("AAAAAA")).to eq 260
  # end
end
