require 'test_helper'

class DetailEmployeeSalariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_employee_salary = detail_employee_salaries(:one)
  end

  test "should get index" do
    get detail_employee_salaries_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_employee_salary_url
    assert_response :success
  end

  test "should create detail_employee_salary" do
    assert_difference('DetailEmployeeSalary.count') do
      post detail_employee_salaries_url, params: { detail_employee_salary: { base_salary: @detail_employee_salary.base_salary, basic_pay: @detail_employee_salary.basic_pay, duty_allowance: @detail_employee_salary.duty_allowance, duty_allowance_task: @detail_employee_salary.duty_allowance_task, face_salary: @detail_employee_salary.face_salary, fixed_allowance: @detail_employee_salary.fixed_allowance, fixed_extra_task_time: @detail_employee_salary.fixed_extra_task_time, fixed_overtime: @detail_employee_salary.fixed_overtime, half_year_salary: @detail_employee_salary.half_year_salary, hourly_difference: @detail_employee_salary.hourly_difference, hourly_difference_percent: @detail_employee_salary.hourly_difference_percent, job_ability_grade: @detail_employee_salary.job_ability_grade, last_years_hourly: @detail_employee_salary.last_years_hourly, minus_salary: @detail_employee_salary.minus_salary, personal_information_id: @detail_employee_salary.personal_information_id, promotion_rate: @detail_employee_salary.promotion_rate, time_unit_price: @detail_employee_salary.time_unit_price } }
    end

    assert_redirected_to detail_employee_salary_url(DetailEmployeeSalary.last)
  end

  test "should show detail_employee_salary" do
    get detail_employee_salary_url(@detail_employee_salary)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_employee_salary_url(@detail_employee_salary)
    assert_response :success
  end

  test "should update detail_employee_salary" do
    patch detail_employee_salary_url(@detail_employee_salary), params: { detail_employee_salary: { base_salary: @detail_employee_salary.base_salary, basic_pay: @detail_employee_salary.basic_pay, duty_allowance: @detail_employee_salary.duty_allowance, duty_allowance_task: @detail_employee_salary.duty_allowance_task, face_salary: @detail_employee_salary.face_salary, fixed_allowance: @detail_employee_salary.fixed_allowance, fixed_extra_task_time: @detail_employee_salary.fixed_extra_task_time, fixed_overtime: @detail_employee_salary.fixed_overtime, half_year_salary: @detail_employee_salary.half_year_salary, hourly_difference: @detail_employee_salary.hourly_difference, hourly_difference_percent: @detail_employee_salary.hourly_difference_percent, job_ability_grade: @detail_employee_salary.job_ability_grade, last_years_hourly: @detail_employee_salary.last_years_hourly, minus_salary: @detail_employee_salary.minus_salary, personal_information_id: @detail_employee_salary.personal_information_id, promotion_rate: @detail_employee_salary.promotion_rate, time_unit_price: @detail_employee_salary.time_unit_price } }
    assert_redirected_to detail_employee_salary_url(@detail_employee_salary)
  end

  test "should destroy detail_employee_salary" do
    assert_difference('DetailEmployeeSalary.count', -1) do
      delete detail_employee_salary_url(@detail_employee_salary)
    end

    assert_redirected_to detail_employee_salaries_url
  end
end
