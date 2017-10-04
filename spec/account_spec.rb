require_relative '../lib/account'

describe Account do
  trans = [{ date: '2011-01-12', credit: 100, balance: 100 }]
  date = '2011-01-12'

  it 'responds to deposit money' do
    expect(subject).to respond_to :deposit
  end

  it 'responds to balance' do
    expect(subject).to respond_to :balance
  end

  it 'adds value to balance' do
    expect { subject.deposit(100, date) }.to change { subject.balance }.by(100)
  end

  it 'removes value from balance' do
    subject.deposit(100, date)
    expect { subject.withdraw(50, date) }.to change { subject.balance }.by(-50)
  end

  it 'shows the balance' do
    subject.deposit(100, date)
    expect(subject.balance).to eq(100)
  end

  it 'saves the date of the transaction' do
    subject.deposit(100, date)
    expect(subject.account).to eq(trans)
  end
end
