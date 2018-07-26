require "application_system_test_case"

class PersonalInformationsTest < ApplicationSystemTestCase
  setup do
    @personal_information = personal_informations(:one)
  end

  test "visiting the index" do
    visit personal_informations_url
    assert_selector "h1", text: "Personal Informations"
  end

  test "creating a Personal information" do
    visit personal_informations_url
    click_on "New Personal Information"

    fill_in "Age Group", with: @personal_information.age_group_id
    fill_in "Birth", with: @personal_information.birth
    fill_in "Date", with: @personal_information.date
    fill_in "Department", with: @personal_information.department_id
    fill_in "Employee", with: @personal_information.employee_id
    fill_in "Insurance", with: @personal_information.insurance
    fill_in "Join Date", with: @personal_information.join_date
    fill_in "Name", with: @personal_information.name
    fill_in "Position Grade", with: @personal_information.position_grade_id
    fill_in "Residence", with: @personal_information.residence_id
    fill_in "Task", with: @personal_information.task_id
    click_on "Create Personal information"

    assert_text "Personal information was successfully created"
    click_on "Back"
  end

  test "updating a Personal information" do
    visit personal_informations_url
    click_on "Edit", match: :first

    fill_in "Age Group", with: @personal_information.age_group_id
    fill_in "Birth", with: @personal_information.birth
    fill_in "Date", with: @personal_information.date
    fill_in "Department", with: @personal_information.department_id
    fill_in "Employee", with: @personal_information.employee_id
    fill_in "Insurance", with: @personal_information.insurance
    fill_in "Join Date", with: @personal_information.join_date
    fill_in "Name", with: @personal_information.name
    fill_in "Position Grade", with: @personal_information.position_grade_id
    fill_in "Residence", with: @personal_information.residence_id
    fill_in "Task", with: @personal_information.task_id
    click_on "Update Personal information"

    assert_text "Personal information was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal information" do
    visit personal_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal information was successfully destroyed"
  end
end
