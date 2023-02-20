require_relative "../lib/print_dec_zero"

RSpec.describe "Print Dec Zero" do
  # it "tests truth" do
  #   expect(true).to eq(true)
  # end

  # it "print to 6 decimal places" do
  #   expect(decimal_print(0.5)).to eq 0.500000
  # end

  it "converts time formt" do
    expect(timeConversion("07:05:45PM")).to eq "19:05:45"
  end
end
