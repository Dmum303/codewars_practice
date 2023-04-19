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

  it "converts 0.20 to correct" do
    expect(ChangeConverter.convert(0.20)).to eq %w[20p]
  end

  it "converts 0.50 to correct" do
    expect(ChangeConverter.convert(0.50)).to eq %w[50p]
  end

  it "converts 1 to correct" do
    expect(ChangeConverter.convert(1)).to eq %w[£1]
  end

  it "converts 2 to correct" do
    expect(ChangeConverter.convert(2)).to eq %w[£2]
  end

  it "converts 5 to correct" do
    expect(ChangeConverter.convert(5)).to eq %w[£5]
  end

  it "converts 10 to correct" do
    expect(ChangeConverter.convert(10)).to eq %w[£10]
  end

  it "converts 20 to correct" do
    expect(ChangeConverter.convert(20)).to eq %w[£20]
  end

  it "converts 50 to correct" do
    expect(ChangeConverter.convert(50)).to eq %w[£50]
  end

  it "converts 6.42 to correct" do
    expect(ChangeConverter.convert(6.42)).to eq %w[£5 £1 20p 20p 2p]
  end

  it "converts 40 to correct" do
    expect(ChangeConverter.convert(40)).to eq %w[£20 £20]
  end

  it "converts 16.30 to correct" do
    expect(ChangeConverter.convert(16.30)).to eq %w[£10 £5 £1 20p 10p]
  end

  fit "converts 19.99 to correct change" do
    expect(ChangeConverter.convert(19.99)).to eq %w[
         £10
         £5
         £2
         £2
         50p
         20p
         20p
         5p
         2p
         2p
       ]
  end

  it "converts 76.81 to correct" do
    expect(ChangeConverter.convert(76.81)).to eq %w[
         £50
         £20
         £5
         £1
         50p
         20p
         10p
         1p
       ]
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
