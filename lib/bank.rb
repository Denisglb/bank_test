require 'date'

class Bank
	attr_reader :account, :accounts

  def initialize(accounts = Account.new)
    @account = accounts.account
  end

  # def date 
  # 	Time.now.strftime("%Y-%d-%m")
  # end

  def display 
  	puts "date || credit || debit || balance"
  	statement
  end

  def statement
  	@account.each do |n|
  		puts "#{n[:date]} || #{n[:credit]} || #{n[:debit]} || #{n[:balance]}"
  	end 
  end

end

class Account
	attr_reader :amount, :account

  def initialize
  	@account = []
  	@amount = 0
  end

  def deposit(value, date)
    @amount += value
    @account << {date: date, credit: value, balance: @amount}
  end

  def withdraw(value, date)
  	# sufficient?(value)
    @amount -= value
    @account << {date: date, debit: value, balance: @amount}
  end

  def balance
    p @amount
  end
end

account = Account.new
bank = Bank.new(account)
account.deposit(100, "11-12-2017")
account.withdraw(5, "12-12-2012")
p account.amount
p bank.account
p bank.display






