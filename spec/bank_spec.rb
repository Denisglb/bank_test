require_relative '../lib/bank'

describe Bank do
  let(:account) { double(:account) }
  arr = [{ date: '2011-01-12', credit: 100, balance: 100 }]
  show = "date || credit || debit || balance\n"
  state = "2011-01-12 || 100 ||  || 100\n"

  it 'responds to display' do
    expect(subject).to respond_to :display
  end

  it 'responds to statement' do
    expect(subject).to respond_to :statement
  end

  it 'displays the header of the bank account statemetn' do
    expect { subject.display }.to output(show).to_stdout
  end

  it 'shows a statement of accounts' do
    allow(account).to receive(:account).and_return(arr)
    subject = Bank.new(account)
    expect { subject.statement }.to output(state).to_stdout
  end
end
