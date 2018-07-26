require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  setup do
    @login = logins(:one)
  end

  test "visiting the index" do
    visit logins_url
    assert_selector "h1", text: "Logins"
  end

  test "creating a Login" do
    visit logins_url
    click_on "New Login"

    fill_in "User", with: @login.user_id
    fill_in "User Pw", with: @login.user_pw
    click_on "Create Login"

    assert_text "Login was successfully created"
    click_on "Back"
  end

  test "updating a Login" do
    visit logins_url
    click_on "Edit", match: :first

    fill_in "User", with: @login.user_id
    fill_in "User Pw", with: @login.user_pw
    click_on "Update Login"

    assert_text "Login was successfully updated"
    click_on "Back"
  end

  test "destroying a Login" do
    visit logins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Login was successfully destroyed"
  end
end
