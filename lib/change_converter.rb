class ChangeConverter
  def initialize
  end

  # Hash should have highest value first
  Denomination = { "10p" => 10, "5p" => 5, "2p" => 2, "1p" => 1 }

  def self.convert(amount)
    converted = []
    amount_in_pence = (amount * 100).to_i
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
