require "application_system_test_case"

class SettingValuesTest < ApplicationSystemTestCase
  setup do
    @setting_value = setting_values(:one)
  end

  test "visiting the index" do
    visit setting_values_url
    assert_selector "h1", text: "Setting Values"
  end

  test "creating a Setting value" do
    visit setting_values_url
    click_on "New Setting Value"

    fill_in "Name", with: @setting_value.name
    fill_in "Value", with: @setting_value.value
    fill_in "Year", with: @setting_value.year
    click_on "Create Setting value"

    assert_text "Setting value was successfully created"
    click_on "Back"
  end

  test "updating a Setting value" do
    visit setting_values_url
    click_on "Edit", match: :first

    fill_in "Name", with: @setting_value.name
    fill_in "Value", with: @setting_value.value
    fill_in "Year", with: @setting_value.year
    click_on "Update Setting value"

    assert_text "Setting value was successfully updated"
    click_on "Back"
  end

  test "destroying a Setting value" do
    visit setting_values_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Setting value was successfully destroyed"
  end
end
