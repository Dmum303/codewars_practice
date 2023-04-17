require_relative "../lib/human_readable_duration_format"

RSpec.describe "HumanReadableDurationFormat" do
  it "returns the correct duration" do
    expect(format_duraction(1)).to eq "1 second"
  end

  it "returns the correct duration" do
    expect(format_duraction(2)).to eq "2 seconds"
  end

  it "returns the correct duration" do
    expect(format_duraction(0)).to eq "now"
  end

  it "returns the correct duration" do
    expect(format_duraction(62)).to eq "1 minute and 2 seconds"
  end
end
