require "application_system_test_case"

class ResidencesTest < ApplicationSystemTestCase
  setup do
    @residence = residences(:one)
  end

  test "visiting the index" do
    visit residences_url
    assert_selector "h1", text: "Residences"
  end

  test "creating a Residence" do
    visit residences_url
    click_on "New Residence"

    fill_in "Name", with: @residence.name
    fill_in "Price", with: @residence.price
    click_on "Create Residence"

    assert_text "Residence was successfully created"
    click_on "Back"
  end

  test "updating a Residence" do
    visit residences_url
    click_on "Edit", match: :first

    fill_in "Name", with: @residence.name
    fill_in "Price", with: @residence.price
    click_on "Update Residence"

    assert_text "Residence was successfully updated"
    click_on "Back"
  end

  test "destroying a Residence" do
    visit residences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Residence was successfully destroyed"
  end
end
