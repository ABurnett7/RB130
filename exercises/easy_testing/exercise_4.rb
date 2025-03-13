require 'minitest/autorun'

class TestExercise < Minitest::Test

  def test_empty_array
    list = []
    assert_empty(list, "This Passes")
  end

  def test_empty_array_failure
    list = ['Hi']
    assert_empty(list, "This Fails")
  end
end