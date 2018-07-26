require "application_system_test_case"

class SupportResidencesTest < ApplicationSystemTestCase
  setup do
    @support_residence = support_residences(:one)
  end

  test "visiting the index" do
    visit support_residences_url
    assert_selector "h1", text: "Support Residences"
  end

  test "creating a Support residence" do
    visit support_residences_url
    click_on "New Support Residence"

    fill_in "Name", with: @support_residence.name
    fill_in "Personal Information", with: @support_residence.personal_information_id
    fill_in "Price", with: @support_residence.price
    fill_in "Start Month", with: @support_residence.start_month
    click_on "Create Support residence"

    assert_text "Support residence was successfully created"
    click_on "Back"
  end

  test "updating a Support residence" do
    visit support_residences_url
    click_on "Edit", match: :first

    fill_in "Name", with: @support_residence.name
    fill_in "Personal Information", with: @support_residence.personal_information_id
    fill_in "Price", with: @support_residence.price
    fill_in "Start Month", with: @support_residence.start_month
    click_on "Update Support residence"

    assert_text "Support residence was successfully updated"
    click_on "Back"
  end

  test "destroying a Support residence" do
    visit support_residences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Support residence was successfully destroyed"
  end
end
