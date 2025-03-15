require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test

  def setup
    @register = CashRegister.new(1000)
    @transaction = Transaction.new(10)
  end

  def test_accept_money
    @transaction.amount_paid = 10

    assert_equal(1000, @register.total_money)
    @register.accept_money(@transaction)
    assert_equal(1010, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = 20
    
    assert_equal(10, @register.change(@transaction))
  end

  

end