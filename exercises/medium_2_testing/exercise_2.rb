require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test

  def setup
    @cash_register = CashRegister.new(1000)
  end

  def test_total_money
    assert_equal(1000, @cash_register.total_money) # Simple test to start out
  end
end