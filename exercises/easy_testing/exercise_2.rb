require 'minitest/autorun'

class TestExercise < Minitest::Test

  def test_xyz_downcase
    value = 'XYZ'
    assert_equal('xyz', value.downcase)
  end

  def test_xyz_downcase_fail
    value = 'abc'
    assert_equal('xyz', value.downcase, 'Line 12 Fails the Test')
  end
end