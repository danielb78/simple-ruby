class Account
  attr_accessor :balance

  attr_reader :cleared_balance
  protected :cleared_balance

  def initialize(balance)
    @balance = @cleared_balance = balance
  end

  def greather_balance_than?(other)
    cleared_balance > other.cleared_balance
  end
end