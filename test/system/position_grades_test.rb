require "application_system_test_case"

class PositionGradesTest < ApplicationSystemTestCase
  setup do
    @position_grade = position_grades(:one)
  end

  test "visiting the index" do
    visit position_grades_url
    assert_selector "h1", text: "Position Grades"
  end

  test "creating a Position grade" do
    visit position_grades_url
    click_on "New Position Grade"

    fill_in "Add Amount", with: @position_grade.add_amount
    fill_in "Base Age", with: @position_grade.base_age
    fill_in "Job Ability Grade", with: @position_grade.job_ability_grade
    fill_in "Position Id", with: @position_grade.position_ID
    fill_in "Position Name", with: @position_grade.position_name
    fill_in "Task Grade", with: @position_grade.task_grade
    fill_in "Task Time", with: @position_grade.task_time
    click_on "Create Position grade"

    assert_text "Position grade was successfully created"
    click_on "Back"
  end

  test "updating a Position grade" do
    visit position_grades_url
    click_on "Edit", match: :first

    fill_in "Add Amount", with: @position_grade.add_amount
    fill_in "Base Age", with: @position_grade.base_age
    fill_in "Job Ability Grade", with: @position_grade.job_ability_grade
    fill_in "Position Id", with: @position_grade.position_ID
    fill_in "Position Name", with: @position_grade.position_name
    fill_in "Task Grade", with: @position_grade.task_grade
    fill_in "Task Time", with: @position_grade.task_time
    click_on "Update Position grade"

    assert_text "Position grade was successfully updated"
    click_on "Back"
  end

  test "destroying a Position grade" do
    visit position_grades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Position grade was successfully destroyed"
  end
end
