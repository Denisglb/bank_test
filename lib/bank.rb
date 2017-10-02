require 'date'

class Bank
  def initialize
    @amount = 0
  end

  def deposit(value)
    p date
    p @amount += value
  end

  def withdraw(value)
  	raise "You ain't got any p" if @amount - value < 0 
    p date
    p @amount -= value
  end

  def date 
  	Time.now.strftime("%Y-%d-%m")
  end

  def balance
    p @amount
  end

  def display 
  end

end