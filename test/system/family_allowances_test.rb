require "application_system_test_case"

class FamilyAllowancesTest < ApplicationSystemTestCase
  setup do
    @family_allowance = family_allowances(:one)
  end

  test "visiting the index" do
    visit family_allowances_url
    assert_selector "h1", text: "Family Allowances"
  end

  test "creating a Family allowance" do
    visit family_allowances_url
    click_on "New Family Allowance"

    fill_in "Family Type", with: @family_allowance.family_type
    fill_in "Price", with: @family_allowance.price
    click_on "Create Family allowance"

    assert_text "Family allowance was successfully created"
    click_on "Back"
  end

  test "updating a Family allowance" do
    visit family_allowances_url
    click_on "Edit", match: :first

    fill_in "Family Type", with: @family_allowance.family_type
    fill_in "Price", with: @family_allowance.price
    click_on "Update Family allowance"

    assert_text "Family allowance was successfully updated"
    click_on "Back"
  end

  test "destroying a Family allowance" do
    visit family_allowances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Family allowance was successfully destroyed"
  end
end
