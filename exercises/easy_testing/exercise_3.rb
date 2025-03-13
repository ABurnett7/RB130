require 'minitest/autorun'

class TestExercise < Minitest::Test

  def test_nil 
    value = nil 
    assert_nil(value, "This Passes")
  end

  def test_nil_failure
    value = 'Hi'
    assert_nil(value, "This Fails")
  end
end