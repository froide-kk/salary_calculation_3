require "application_system_test_case"

class AdjustmentValuesTest < ApplicationSystemTestCase
  setup do
    @adjustment_value = adjustment_values(:one)
  end

  test "visiting the index" do
    visit adjustment_values_url
    assert_selector "h1", text: "Adjustment Values"
  end

  test "creating a Adjustment value" do
    visit adjustment_values_url
    click_on "New Adjustment Value"

    fill_in "Adjustment List", with: @adjustment_value.adjustment_list
    fill_in "Value", with: @adjustment_value.value
    click_on "Create Adjustment value"

    assert_text "Adjustment value was successfully created"
    click_on "Back"
  end

  test "updating a Adjustment value" do
    visit adjustment_values_url
    click_on "Edit", match: :first

    fill_in "Adjustment List", with: @adjustment_value.adjustment_list
    fill_in "Value", with: @adjustment_value.value
    click_on "Update Adjustment value"

    assert_text "Adjustment value was successfully updated"
    click_on "Back"
  end

  test "destroying a Adjustment value" do
    visit adjustment_values_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adjustment value was successfully destroyed"
  end
end
