require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user_ = user_s(:one)
  end

  test "visiting the index" do
    visit user_s_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User " do
    visit user_s_url
    click_on "New User"

    fill_in "Age", with: @user_.age
    fill_in "Name", with: @user_.name
    click_on "Create User "

    assert_text "User  was successfully created"
    click_on "Back"
  end

  test "updating a User " do
    visit user_s_url
    click_on "Edit", match: :first

    fill_in "Age", with: @user_.age
    fill_in "Name", with: @user_.name
    click_on "Update User "

    assert_text "User  was successfully updated"
    click_on "Back"
  end

  test "destroying a User " do
    visit user_s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User  was successfully destroyed"
  end
end
