require_relative 'statement'

class Account
  include Statement
  attr_accessor :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @history << Transaction.new(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @history << Transaction.new(-amount)
    @balance -= amount
  end
end
