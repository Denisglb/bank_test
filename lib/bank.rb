require_relative './account'
# prints Bank class
class Bank
  attr_reader :account, :accounts

  def initialize(accounts = Account.new)
    @account = accounts.account
  end

  def display
    puts 'date || credit || debit || balance'
    statement
  end

  def statement
    @account.each do |n|
      puts "#{n[:date]} || #{n[:credit]} || #{n[:debit]} || #{n[:balance]}"
    end
  end
end
