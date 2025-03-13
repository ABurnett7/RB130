require 'minitest/autorun'
class NoExperienceError < StandardError; end

class Employee 
  def hire
    raise NoExperienceError
  end
end


class TestExercise < Minitest::Test

  def setup
    @employee = Employee.new
  end

  def test_hire_error
    assert_raises(NoExperienceError) {@employee.hire}
  end
  
end