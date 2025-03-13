require 'minitest/autorun'

class TestExercise < Minitest::Test
  def setup
    @pass_value = 1
    @fail_value = '1'
  end

  def test_kind_of_numeric_pass
    assert_kind_of(Numeric, @pass_value)
  end

  def test_kind_of_numeric_fail
    assert_kind_of(Numeric, @fail_value, 'This is a string!')
  end
end