require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'transaction'
require_relative 'cash_register'

class CashRegisterTest < MiniTest::Test
  
  def test_accept_money
    transaction = Transaction.new(25)
    register    = CashRegister.new(300)
    transaction.amount_paid = 25
    
    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money
    
    assert_equal(previous_amount + 25, current_amount)
  end
  
  def test_change
    transaction = Transaction.new(25)
    register    = CashRegister.new(300)
    transaction.amount_paid = 30
    
    assert_equal(5, register.change(transaction) )
  end
  
  def test_give_receipt
    item_cost = 50
    transaction = Transaction.new(item_cost)
    register    = CashRegister.new(500)
    
    assert_output("You've paid $#{item_cost}.\n") do 
      register.give_receipt(transaction)
    end
  end
  
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30\n')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal(30, transaction.amount_paid)
  end
end