require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'creates an account' do
    expect(account).to be_an_instance_of Account
  end

  it 'keeps track of money balance on the account' do
    account.deposit(500)
    account.withdrawal(100)
    expect(account.balance).to eq 400
  end

  it 'keeps track of transactions on the account' do
    account.deposit(500)
    account.withdrawal(100)
    expect(account.history.length).to eq 2
  end

  describe '#deposit' do
    it 'makes a deposit' do
      is_expected.to respond_to(:deposit).with(1).argument
    end

    it 'deposits money to the account' do
       expect(account.deposit(5)).to eq 5
    end
  end

  describe '#withdrawal' do
    it 'makes a withdrawal' do
      is_expected.to respond_to(:withdrawal).with(1).argument
    end

    it 'withdrawns money from the account' do
      account.deposit(100)
      expect(account.withdrawal(50)).to eq 50
    end
  end
end
