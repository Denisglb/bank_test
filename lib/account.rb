class Account
  attr_reader :balance, :account

  def initialize
    @account = []
    @balance = 0
  end

  def deposit(value, date)
    @balance += value
    @account << { date: date, credit: value, balance: @balance }
  end

  def withdraw(value, date)
    # sufficient?(value)
    @balance -= value
    @account << { date: date, debit: value, balance: @balance }
  end
end
