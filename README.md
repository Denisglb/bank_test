# BANK TECH TEST

Using TDD and OOD this a basic programme designed to store and print a clients bank transaction information. 

The client can deposit, withdraw, view balance and dates of every transation. 

## Getting started

`git clone https://github.com/Denisglb/bank_test`
`$ bundle install`

## Usage

'all commands are run through terminal. Sample commands:

$ irb
$ require './lib/bank'
$ account = Account.new
$ bank = Bank.new(account)
$ account.deposit(100, "11-12-2017")
$ account.withdraw(5, "12-12-2012")
$ account.amount
$ bank.account
$ bank.display
'


## Running tests

Run `rspec` in terminal

All the tests are passing with 100% coverage