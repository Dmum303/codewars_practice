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
end
