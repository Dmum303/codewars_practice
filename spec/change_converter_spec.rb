require_relative "../lib/change_converter"

RSpec.describe "ChangeConverter" do
  it "converts 0.01 to 1p" do
    expect(ChangeConverter.convert(0.01)).to eq ["1p"]
  end

  it "converts 0.02 to 2p" do
    expect(ChangeConverter.convert(0.02)).to eq ["2p"]
  end

  it "converts 0.03 to correct" do
    expect(ChangeConverter.convert(0.03)).to eq %w[2p 1p]
  end

  it "converts 0.04 to correct" do
    expect(ChangeConverter.convert(0.04)).to eq %w[2p 2p]
  end

  it "converts 0.05 to correct" do
    expect(ChangeConverter.convert(0.05)).to eq %w[5p]
  end

  it "converts 0.10 to correct" do
    expect(ChangeConverter.convert(0.10)).to eq %w[10p]
  end
end

# Acceptance Criteria
# change_generator.convert(6.42)
# => ["£5", "£1", "20p", "20p", "2p"]
# change_generator.convert(40)
# => ["£20", "£20"]
# change_generator.convert(16.30)
# => ["£10", "£5", "£1", "20p", "10p"]
# change_generator.convert(19.99)
# => ["£10", "£5", "£2", "£2", "50p", "20p", "20p", "5p", "2p", "2p"]
# change_generator.convert(76.81)
# => ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]
