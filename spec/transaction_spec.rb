require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(amount) }
  let(:amount) { double(100) }

  it 'creates a transaction' do
    expect(transaction).to be_an_instance_of Transaction
  end

  it 'assigns date to each transaction' do
    expect(transaction.date).not_to be_empty
  end
end
