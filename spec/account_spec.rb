require_relative '../lib/account'

describe Account do
  trans = [{ date: '2011-01-12', credit: 100, balance: 100 }]

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
    subject.deposit(100, '2011-01-12')
    expect { subject.deposit(100, '2011-01-12') }.to change { subject.balance }.by(100)
  end

  it 'removes value from balance' do
    subject.deposit(100, '2011-01-12')
    expect { subject.withdraw(50, '2011-01-12') }.to change { subject.balance }.by(-50)
  end

  it 'shows the balance' do
    subject.deposit(100, '2011-01-12')
    expect(subject.balance).to eq(100)
  end

  it 'saves the date of the transaction' do
    subject.deposit(100, '2011-01-12')
    expect(subject.account).to eq(trans)
  end
end
