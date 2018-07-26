require 'test_helper'

class PositionGradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_grade = position_grades(:one)
  end

  test "should get index" do
    get position_grades_url
    assert_response :success
  end

  test "should get new" do
    get new_position_grade_url
    assert_response :success
  end

  test "should create position_grade" do
    assert_difference('PositionGrade.count') do
      post position_grades_url, params: { position_grade: { add_amount: @position_grade.add_amount, base_age: @position_grade.base_age, job_ability_grade: @position_grade.job_ability_grade, name: @position_grade.name, task_grade: @position_grade.task_grade, task_time: @position_grade.task_time } }
    end

    assert_redirected_to position_grade_url(PositionGrade.last)
  end

  test "should show position_grade" do
    get position_grade_url(@position_grade)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_grade_url(@position_grade)
    assert_response :success
  end

  test "should update position_grade" do
    patch position_grade_url(@position_grade), params: { position_grade: { add_amount: @position_grade.add_amount, base_age: @position_grade.base_age, job_ability_grade: @position_grade.job_ability_grade, name: @position_grade.name, task_grade: @position_grade.task_grade, task_time: @position_grade.task_time } }
    assert_redirected_to position_grade_url(@position_grade)
  end

  test "should destroy position_grade" do
    assert_difference('PositionGrade.count', -1) do
      delete position_grade_url(@position_grade)
    end

    assert_redirected_to position_grades_url
  end
end
