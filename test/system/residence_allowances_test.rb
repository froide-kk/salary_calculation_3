require "application_system_test_case"

class ResidenceAllowancesTest < ApplicationSystemTestCase
  setup do
    @residence_allowance = residence_allowances(:one)
  end

  test "visiting the index" do
    visit residence_allowances_url
    assert_selector "h1", text: "Residence Allowances"
  end

  test "creating a Residence allowance" do
    visit residence_allowances_url
    click_on "New Residence Allowance"

    fill_in "Price", with: @residence_allowance.price
    fill_in "Residence Type", with: @residence_allowance.residence_type
    click_on "Create Residence allowance"

    assert_text "Residence allowance was successfully created"
    click_on "Back"
  end

  test "updating a Residence allowance" do
    visit residence_allowances_url
    click_on "Edit", match: :first

    fill_in "Price", with: @residence_allowance.price
    fill_in "Residence Type", with: @residence_allowance.residence_type
    click_on "Update Residence allowance"

    assert_text "Residence allowance was successfully updated"
    click_on "Back"
  end

  test "destroying a Residence allowance" do
    visit residence_allowances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Residence allowance was successfully destroyed"
  end
end
