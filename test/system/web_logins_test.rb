require "application_system_test_case"

class WebLoginsTest < ApplicationSystemTestCase
  setup do
    @web_login = web_logins(:one)
  end

  test "visiting the index" do
    visit web_logins_url
    assert_selector "h1", text: "Web Logins"
  end

  test "creating a Web login" do
    visit web_logins_url
    click_on "New Web Login"

    click_on "Create Web login"

    assert_text "Web login was successfully created"
    click_on "Back"
  end

  test "updating a Web login" do
    visit web_logins_url
    click_on "Edit", match: :first

    click_on "Update Web login"

    assert_text "Web login was successfully updated"
    click_on "Back"
  end

  test "destroying a Web login" do
    visit web_logins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web login was successfully destroyed"
  end
end
