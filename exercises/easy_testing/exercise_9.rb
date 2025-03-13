require 'minitest/autorun'

class List
  def process
    self
  end

  def process_fail
    'Hi'
  end
end

class TestExercise < Minitest::Test

  def setup
    @list = List.new
  end

  def test_assert_same_pass
    assert_same(@list, @list.process)
  end

  def test_assert_same_fail
    assert_same(@list, @list.process_fail, "These aren't the same!")
  end
end