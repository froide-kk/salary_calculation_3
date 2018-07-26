require "application_system_test_case"

class AdjustmentTypesTest < ApplicationSystemTestCase
  setup do
    @adjustment_type = adjustment_types(:one)
  end

  test "visiting the index" do
    visit adjustment_types_url
    assert_selector "h1", text: "Adjustment Types"
  end

  test "creating a Adjustment type" do
    visit adjustment_types_url
    click_on "New Adjustment Type"

    fill_in "Hint", with: @adjustment_type.hint
    fill_in "Name", with: @adjustment_type.name
    fill_in "Value", with: @adjustment_type.value
    click_on "Create Adjustment type"

    assert_text "Adjustment type was successfully created"
    click_on "Back"
  end

  test "updating a Adjustment type" do
    visit adjustment_types_url
    click_on "Edit", match: :first

    fill_in "Hint", with: @adjustment_type.hint
    fill_in "Name", with: @adjustment_type.name
    fill_in "Value", with: @adjustment_type.value
    click_on "Update Adjustment type"

    assert_text "Adjustment type was successfully updated"
    click_on "Back"
  end

  test "destroying a Adjustment type" do
    visit adjustment_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adjustment type was successfully destroyed"
  end
end
