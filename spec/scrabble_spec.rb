require_relative "../lib/scrabble"

RSpec.describe "Scrabble" do
  it "tests the truth" do
    expect(true).to eq true
  end

  it "Returns 1 for 1 point letter" do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to  eq 1 # => 1
  end

  it "Returns 1 for 1 point letter" do
    scrabble = Scrabble.new('e')
    expect(scrabble.score).to  eq 1 # => 1
  end

  it "Returns 2 for a 2 point letter" do
    scrabble = Scrabble.new('d')
    expect(scrabble.score).to  eq 2 # => 2
  end

  it "Returns 3 for a 3 point letter" do
    scrabble = Scrabble.new('b')
    expect(scrabble.score).to  eq 3 # => 2
  end

    it "Returns 3 for a 3 point letter" do
    scrabble = Scrabble.new('street')
    expect(scrabble.score).to  eq 6
  end

    it "Returns 3 for a 3 point letter" do
    scrabble = Scrabble.new('OXYPHENBUTAZONE')
    expect(scrabble.score).to  eq 41
  end
end
