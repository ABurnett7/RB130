require 'minitest/autorun'

class TestExercise < Minitest::Test

  def setup
    @list_pass = Array.new([1, 2, 3])
    @list_fail = Array.new([1, 2, 'xyz'])
  end


  def test_refute_includes_pass
    refute_includes(@list_pass, 'xyz')
  end

  def test_refute_includes_fail
    refute_includes(@list_fail, 'xyz', "It's in here!")
  end
end