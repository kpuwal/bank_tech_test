# Bank tech test

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

### User Stories
```
As a Bank customer
So that I can manage my finances
I want to deposit money into my account

As a Bank customer
So that I can spend my money
I want to make a withdrawal

As a Bank customer
So that I can control my budget
I want to print my Bank Account statement.
```

#### Download
```
$ git clone ...
$ bundle install
$ cd BankTechTest
```
#### Interact
```
$ irb
$ Dir['./lib/*'].each {|file| require file}
$ account = Account.new
$ account.deposit(1000)
$ account.deposit(2000)
$ account.withdrawal(500)
$ account.statement
```
#### Test
```
$ rspec
```
