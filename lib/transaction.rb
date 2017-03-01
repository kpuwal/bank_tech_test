require_relative 'date_stamp'

class Transaction
  extend DateStamp
  attr_reader :amount, :date

  def initialize(amount)
    @date = DateStamp.date
    @amount = amount
  end
end
