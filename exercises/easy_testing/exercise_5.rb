require 'minitest/autorun'

class TestExercise < Minitest::Test

  def setup
    @list = ['xyz']
    @failure_list = ['x', 'y', 'z']
  end

  def test_includes
    assert_includes(@list, 'xyz')
  end

  def test_includes_failuer
    assert_includes(@failure_list, 'xyz')
  end
end