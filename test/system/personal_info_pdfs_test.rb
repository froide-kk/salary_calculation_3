require "application_system_test_case"

class PersonalInfoPdfsTest < ApplicationSystemTestCase
  setup do
    @personal_info_pdf = personal_info_pdfs(:one)
  end

  test "visiting the index" do
    visit personal_info_pdfs_url
    assert_selector "h1", text: "Personal Info Pdfs"
  end

  test "creating a Personal info pdf" do
    visit personal_info_pdfs_url
    click_on "New Personal Info Pdf"

    click_on "Create Personal info pdf"

    assert_text "Personal info pdf was successfully created"
    click_on "Back"
  end

  test "updating a Personal info pdf" do
    visit personal_info_pdfs_url
    click_on "Edit", match: :first

    click_on "Update Personal info pdf"

    assert_text "Personal info pdf was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal info pdf" do
    visit personal_info_pdfs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal info pdf was successfully destroyed"
  end
end
