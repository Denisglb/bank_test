require_relative '../lib/bank'

describe Bank do
  it 'responds to deposit money' do
    expect(subject).to respond_to :deposit
  end

  it 'responds to withdraw' do
    expect(subject).to respond_to :withdraw
  end
  it 'responds to balance' do
    expect(subject).to respond_to :balance
  end
  it 'responds to date' do
    expect(subject).to respond_to :date
  end
  it 'responds to display' do
    expect(subject).to respond_to :display
  end

  it 'adds value to balance' do
    expect { subject.deposit(100) }.to change { subject.balance }.by(100)
  end

  it 'removes value from balance' do
  	subject.deposit(100)
  	expect { subject.withdraw(50) }.to change { subject.balance }.by(-50)
  end

  it 'balance cannot go below zero' do
  	expect { subject.withdraw(10) }.to raise_error "You ain't got any p"
end

  it 'shows the current date' do
  	expect(subject.date).to eq("2017-02-10")
  end

  it 'displays a history of transactions' do
  	subject.deposit(100)
  	subject.withdraw(50)
  	expect(subject.display).to include("date || credit || debit || balance")
end
end 