require 'minitest/autorun'

class TestExercise < Minitest::Test
  def test_odd
    value = 3
    assert(value.odd?, 'The value is not odd.')
  end

  def test_odd_fail
    value = 4
    assert(value.odd?, 'The value is not odd.')
  end
end