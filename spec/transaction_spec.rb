require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(amount) }
  let(:amount) { double(100) }
  let(:date) { double(1/3/2017) }

  it 'creates a transaction' do
    expect(transaction).to be_an_instance_of Transaction
  end

  it 'creates date stamp for each transaction' do
    expect(transaction.date).to eq date
  end
end
