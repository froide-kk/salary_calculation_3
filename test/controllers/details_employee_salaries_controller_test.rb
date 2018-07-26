require 'test_helper'

class DetailsEmployeeSalariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @details_employee_salary = details_employee_salaries(:one)
  end

  test "should get index" do
    get details_employee_salaries_url
    assert_response :success
  end

  test "should get new" do
    get new_details_employee_salary_url
    assert_response :success
  end

  test "should create details_employee_salary" do
    assert_difference('DetailsEmployeeSalary.count') do
      post details_employee_salaries_url, params: { details_employee_salary: { base_salary: @details_employee_salary.base_salary, basic_pay: @details_employee_salary.basic_pay, duty_allowance: @details_employee_salary.duty_allowance, duty_allowance_task: @details_employee_salary.duty_allowance_task, face_salary: @details_employee_salary.face_salary, fixed_allowance: @details_employee_salary.fixed_allowance, fixed_extra_task_time: @details_employee_salary.fixed_extra_task_time, fixed_overtime: @details_employee_salary.fixed_overtime, half_year_salary: @details_employee_salary.half_year_salary, hourly_difference: @details_employee_salary.hourly_difference, hourly_difference_percent: @details_employee_salary.hourly_difference_percent, job_ability_grade: @details_employee_salary.job_ability_grade, last_years_hourly: @details_employee_salary.last_years_hourly, minus_salary: @details_employee_salary.minus_salary, personal_information_id: @details_employee_salary.personal_information_id, promotion_rate: @details_employee_salary.promotion_rate, time_unit_price: @details_employee_salary.time_unit_price } }
    end

    assert_redirected_to details_employee_salary_url(DetailsEmployeeSalary.last)
  end

  test "should show details_employee_salary" do
    get details_employee_salary_url(@details_employee_salary)
    assert_response :success
  end

  test "should get edit" do
    get edit_details_employee_salary_url(@details_employee_salary)
    assert_response :success
  end

  test "should update details_employee_salary" do
    patch details_employee_salary_url(@details_employee_salary), params: { details_employee_salary: { base_salary: @details_employee_salary.base_salary, basic_pay: @details_employee_salary.basic_pay, duty_allowance: @details_employee_salary.duty_allowance, duty_allowance_task: @details_employee_salary.duty_allowance_task, face_salary: @details_employee_salary.face_salary, fixed_allowance: @details_employee_salary.fixed_allowance, fixed_extra_task_time: @details_employee_salary.fixed_extra_task_time, fixed_overtime: @details_employee_salary.fixed_overtime, half_year_salary: @details_employee_salary.half_year_salary, hourly_difference: @details_employee_salary.hourly_difference, hourly_difference_percent: @details_employee_salary.hourly_difference_percent, job_ability_grade: @details_employee_salary.job_ability_grade, last_years_hourly: @details_employee_salary.last_years_hourly, minus_salary: @details_employee_salary.minus_salary, personal_information_id: @details_employee_salary.personal_information_id, promotion_rate: @details_employee_salary.promotion_rate, time_unit_price: @details_employee_salary.time_unit_price } }
    assert_redirected_to details_employee_salary_url(@details_employee_salary)
  end

  test "should destroy details_employee_salary" do
    assert_difference('DetailsEmployeeSalary.count', -1) do
      delete details_employee_salary_url(@details_employee_salary)
    end

    assert_redirected_to details_employee_salaries_url
  end
end
