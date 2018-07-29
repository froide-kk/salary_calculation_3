require "application_system_test_case"

class WebHistoriesTest < ApplicationSystemTestCase
  setup do
    @web_history = web_histories(:one)
  end

  test "visiting the index" do
    visit web_histories_url
    assert_selector "h1", text: "Web Histories"
  end

  test "creating a Web history" do
    visit web_histories_url
    click_on "New Web History"

    click_on "Create Web history"

    assert_text "Web history was successfully created"
    click_on "Back"
  end

  test "updating a Web history" do
    visit web_histories_url
    click_on "Edit", match: :first

    click_on "Update Web history"

    assert_text "Web history was successfully updated"
    click_on "Back"
  end

  test "destroying a Web history" do
    visit web_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web history was successfully destroyed"
  end
end
