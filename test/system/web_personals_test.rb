require "application_system_test_case"

class WebPersonalsTest < ApplicationSystemTestCase
  setup do
    @web_personal = web_personals(:one)
  end

  test "visiting the index" do
    visit web_personals_url
    assert_selector "h1", text: "Web Personals"
  end

  test "creating a Web personal" do
    visit web_personals_url
    click_on "New Web Personal"

    click_on "Create Web personal"

    assert_text "Web personal was successfully created"
    click_on "Back"
  end

  test "updating a Web personal" do
    visit web_personals_url
    click_on "Edit", match: :first

    click_on "Update Web personal"

    assert_text "Web personal was successfully updated"
    click_on "Back"
  end

  test "destroying a Web personal" do
    visit web_personals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web personal was successfully destroyed"
  end
end
