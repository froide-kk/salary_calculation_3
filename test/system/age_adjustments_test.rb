require "application_system_test_case"

class AgeAdjustmentsTest < ApplicationSystemTestCase
  setup do
    @age_adjustment = age_adjustments(:one)
  end

  test "visiting the index" do
    visit age_adjustments_url
    assert_selector "h1", text: "Age Adjustments"
  end

  test "creating a Age adjustment" do
    visit age_adjustments_url
    click_on "New Age Adjustment"

    fill_in "Name", with: @age_adjustment.name
    fill_in "Value", with: @age_adjustment.value
    click_on "Create Age adjustment"

    assert_text "Age adjustment was successfully created"
    click_on "Back"
  end

  test "updating a Age adjustment" do
    visit age_adjustments_url
    click_on "Edit", match: :first

    fill_in "Name", with: @age_adjustment.name
    fill_in "Value", with: @age_adjustment.value
    click_on "Update Age adjustment"

    assert_text "Age adjustment was successfully updated"
    click_on "Back"
  end

  test "destroying a Age adjustment" do
    visit age_adjustments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Age adjustment was successfully destroyed"
  end
end
