require "application_system_test_case"

class DetailEmployeeSalariesTest < ApplicationSystemTestCase
  setup do
    @detail_employee_salary = detail_employee_salaries(:one)
  end

  test "visiting the index" do
    visit detail_employee_salaries_url
    assert_selector "h1", text: "Detail Employee Salaries"
  end

  test "creating a Detail employee salary" do
    visit detail_employee_salaries_url
    click_on "New Detail Employee Salary"

    fill_in "Base Salary", with: @detail_employee_salary.base_salary
    fill_in "Basic Pay", with: @detail_employee_salary.basic_pay
    fill_in "Duty Allowance", with: @detail_employee_salary.duty_allowance
    fill_in "Duty Allowance Task", with: @detail_employee_salary.duty_allowance_task
    fill_in "Face Salary", with: @detail_employee_salary.face_salary
    fill_in "Fixed Allowance", with: @detail_employee_salary.fixed_allowance
    fill_in "Fixed Extra Task Time", with: @detail_employee_salary.fixed_extra_task_time
    fill_in "Fixed Overtime", with: @detail_employee_salary.fixed_overtime
    fill_in "Half Year Salary", with: @detail_employee_salary.half_year_salary
    fill_in "Hourly Difference", with: @detail_employee_salary.hourly_difference
    fill_in "Hourly Difference Percent", with: @detail_employee_salary.hourly_difference_percent
    fill_in "Job Ability Grade", with: @detail_employee_salary.job_ability_grade
    fill_in "Last Years Hourly", with: @detail_employee_salary.last_years_hourly
    fill_in "Minus Salary", with: @detail_employee_salary.minus_salary
    fill_in "Personal Information", with: @detail_employee_salary.personal_information_id
    fill_in "Promotion Rate", with: @detail_employee_salary.promotion_rate
    fill_in "Time Unit Price", with: @detail_employee_salary.time_unit_price
    click_on "Create Detail employee salary"

    assert_text "Detail employee salary was successfully created"
    click_on "Back"
  end

  test "updating a Detail employee salary" do
    visit detail_employee_salaries_url
    click_on "Edit", match: :first

    fill_in "Base Salary", with: @detail_employee_salary.base_salary
    fill_in "Basic Pay", with: @detail_employee_salary.basic_pay
    fill_in "Duty Allowance", with: @detail_employee_salary.duty_allowance
    fill_in "Duty Allowance Task", with: @detail_employee_salary.duty_allowance_task
    fill_in "Face Salary", with: @detail_employee_salary.face_salary
    fill_in "Fixed Allowance", with: @detail_employee_salary.fixed_allowance
    fill_in "Fixed Extra Task Time", with: @detail_employee_salary.fixed_extra_task_time
    fill_in "Fixed Overtime", with: @detail_employee_salary.fixed_overtime
    fill_in "Half Year Salary", with: @detail_employee_salary.half_year_salary
    fill_in "Hourly Difference", with: @detail_employee_salary.hourly_difference
    fill_in "Hourly Difference Percent", with: @detail_employee_salary.hourly_difference_percent
    fill_in "Job Ability Grade", with: @detail_employee_salary.job_ability_grade
    fill_in "Last Years Hourly", with: @detail_employee_salary.last_years_hourly
    fill_in "Minus Salary", with: @detail_employee_salary.minus_salary
    fill_in "Personal Information", with: @detail_employee_salary.personal_information_id
    fill_in "Promotion Rate", with: @detail_employee_salary.promotion_rate
    fill_in "Time Unit Price", with: @detail_employee_salary.time_unit_price
    click_on "Update Detail employee salary"

    assert_text "Detail employee salary was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail employee salary" do
    visit detail_employee_salaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail employee salary was successfully destroyed"
  end
end
