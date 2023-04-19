class ChangeConverter
  def initialize
  end

  # Hash should have highest value first
  Denomination = {
    "£50" => 5000,
    "£20" => 2000,
    "£10" => 1000,
    "£5" => 500,
    "£2" => 200,
    "£1" => 100,
    "50p" => 50,
    "20p" => 20,
    "10p" => 10,
    "5p" => 5,
    "2p" => 2,
    "1p" => 1
  }

  def self.convert(amount)
    converted = []
    pounds, pence = amount.to_s.split(".").map(&:to_i)
    amount_in_pence = pounds * 100 + pence
    # binding.irb
    Denomination.each do |coin, value|
      if amount_in_pence / value >= 1
        (amount_in_pence / value).times { converted << coin }
        amount_in_pence %= value
      else
        next
      end
    end
    converted
  end
end
