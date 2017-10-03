require_relative '../lib/account'

describe Account do
  DEPOSIT = [100, '2011-01-12'].freeze
  WITHDRAW = [50, '2011-01-12'].freeze
  trans = [{ date: '2011-01-12', credit: 100, balance: 100 }]
  subject.deposit(DEPOSIT)

  it 'responds to deposit money' do
    expect(subject).to respond_to :deposit
  end

  it 'responds to withdraw' do
    expect(subject).to respond_to :withdraw
  end
  it 'responds to balance' do
    expect(subject).to respond_to :balance
  end

  it 'adds value to balance' do
    expect { subject.deposit(DEPOSIT) }.to change { subject.balance }.by(100)
  end

  it 'removes value from balance' do
    expect { subject.withdraw(WITHDRAW) }.to change { subject.balance }.by(-50)
  end

  it 'shows the balance' do
    expect(subject.balance).to eq(100)
  end

  it 'saves the date of the transaction' do
    expect(subject.account).to eq(trans)
  end
end
