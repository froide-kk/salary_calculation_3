require "application_system_test_case"

class UserYongsTest < ApplicationSystemTestCase
  setup do
    @user_yong = user_yongs(:one)
  end

  test "visiting the index" do
    visit user_yongs_url
    assert_selector "h1", text: "User Yongs"
  end

  test "creating a User yong" do
    visit user_yongs_url
    click_on "New User Yong"

    fill_in "Age", with: @user_yong.age
    fill_in "Name", with: @user_yong.name
    click_on "Create User yong"

    assert_text "User yong was successfully created"
    click_on "Back"
  end

  test "updating a User yong" do
    visit user_yongs_url
    click_on "Edit", match: :first

    fill_in "Age", with: @user_yong.age
    fill_in "Name", with: @user_yong.name
    click_on "Update User yong"

    assert_text "User yong was successfully updated"
    click_on "Back"
  end

  test "destroying a User yong" do
    visit user_yongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User yong was successfully destroyed"
  end
end
