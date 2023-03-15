require_relative "../lib/middle_letter"

RSpec.describe "middle_letter" do

  it "tests the truth" do
    expect(true).to eq(true)
  end

  it "returns the middle letter of a odd letter word" do
    expect(middle_letter("hip")).to eq("i")
  end

  it "returns the middle letter of a odd letter word" do
    expect(middle_letter("sky")).to eq("k")
  end

  it "returns the middle letter of a odd letter word" do
    expect(middle_letter("joy")).to eq("o")
  end

  it "returns the middle letter of a longer odd letter word" do
    expect(middle_letter("abbey")).to eq("b")
  end

  it "returns the middle letter of short odd letter word" do
    expect(middle_letter("A")).to eq("A")
  end

  it "returns the middle letter of short even letter word" do
    expect(middle_letter("of")).to eq("of")
  end

  it "returns the middle letter of short even letter word" do
    expect(middle_letter("middle")).to eq("dd")
  end

  it "returns the middle letter of short even letter word" do
    expect(middle_letter("test")).to eq("es")
  end

  it "raises an error with wrong input" do
    expect{middle_letter(32456)}.to raise_error "no dice chump"
  end

  it "raises an error with wrong input" do
    expect{middle_letter(45.5)}.to raise_error
  end

end
