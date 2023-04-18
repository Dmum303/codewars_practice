require_relative "../lib/human_readable_duration_format"

RSpec.describe "HumanReadableDurationFormat" do
  it "returns the correct duration 1" do
    expect(format_duraction(1)).to eq "1 second"
  end

  it "returns the correct duration 2" do
    expect(format_duraction(2)).to eq "2 seconds"
  end

  it "returns the correct duration 0" do
    expect(format_duraction(0)).to eq "now"
  end

  it "returns the correct duration 62" do
    expect(format_duraction(62)).to eq "1 minute and 2 seconds"
  end

  it "returns the correct duration 60" do
    expect(format_duraction(60)).to eq "1 minute"
  end

  it "returns the correct duration 120" do
    expect(format_duraction(120)).to eq "2 minutes"
  end

  it "returns the correct duration 127" do
    expect(format_duraction(127)).to eq "2 minutes and 7 seconds"
  end

  it "returns the correct duration 3600" do
    expect(format_duraction(3600)).to eq "1 hour"
  end

  it "returns the correct duration 3600" do
    expect(format_duraction(3662)).to eq "1 hour, 1 minute and 2 seconds"
  end

  it "returns the correct duration 3600" do
    expect(format_duraction(3662)).to eq "1 hour, 1 minute and 2 seconds"
  end

  it "returns the correct duration  86400" do
    expect(format_duraction(86_400)).to eq "1 day"
  end

  it "returns the correct duration  15,731,080" do
    expect(
      format_duraction(15_731_080)
    ).to eq "182 days, 1 hour, 44 minutes and 40 seconds"
  end

  it "returns the correct duration 132,030,240" do
    expect(
      format_duraction(132_030_240)
    ).to eq "4 years, 68 days, 3 hours and 4 minutes"
  end
end
