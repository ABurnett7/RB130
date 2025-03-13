require 'minitest/autorun'

class TestExercise < Minitest::Test

  def setup
    @value_pass = Numeric.new
    @value_fail = String.new
  end

  def test_numeric_class_pass
    assert_instance_of(Numeric, @value_pass)
  end

  def test_numeric_class_fail
    assert_instance_of(Numeric, @value_fail, 'This is a string!')
  end
end