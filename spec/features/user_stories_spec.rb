describe "User Stories" do

  # As a Bank customer
  # So that I can manage my finances
  # I want to open a Bank Account

  before(:each) do
    @account = Account.new
  end

  # As a Bank customer
  # So that I don't have to carry my money around
  # I want to make a deposit to my account

  it 'so that customer can manage her finances better, she can make a deposit to her account account' do
    @account.deposit(1000)
    @account.deposit(2000)
  end

  # As a Bank customer
  # So that I can spend my money
  # I want to make a withdrawal

  it 'so that customer can spend her money, she makes a withdrawal from her account' do
    @account.withdrawal(500)
  end

  # As a Bank customer
  # So that I can control my budget
  # I want to print my Bank Account statement.

  it 'so that customer can control her budget, she prints account statement' do
    @account.deposit(1000)
    @account.deposit(2000)
    @account.withdrawal(500)
    @account.statement
  end

end
