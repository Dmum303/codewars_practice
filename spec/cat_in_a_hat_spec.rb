require_relative "../lib/cat_in_a_hat"

RSpec.describe "Cat in a hat" do
  it "tests truth" do
    expect(true).to eq(true)
  end

  it "tests 0 cats under hat" do
    expect(height(0)).to eq "2000000.000"
  end

  it "tests 1 cat under hat" do
    expect(height(1)).to eq "2800000.000"
  end

  it "tests 7 cats under hat" do
    expect(height(7)).to eq "3331148.800"
  end

    it "tests 9 cats under hat" do
    expect(height(9)).to eq "3332983.808"
  end
end
