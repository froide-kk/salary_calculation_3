require "application_system_test_case"

class WebWagesTest < ApplicationSystemTestCase
  setup do
    @web_wage = web_wages(:one)
  end

  test "visiting the index" do
    visit web_wages_url
    assert_selector "h1", text: "Web Wages"
  end

  test "creating a Web wage" do
    visit web_wages_url
    click_on "New Web Wage"

    click_on "Create Web wage"

    assert_text "Web wage was successfully created"
    click_on "Back"
  end

  test "updating a Web wage" do
    visit web_wages_url
    click_on "Edit", match: :first

    click_on "Update Web wage"

    assert_text "Web wage was successfully updated"
    click_on "Back"
  end

  test "destroying a Web wage" do
    visit web_wages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web wage was successfully destroyed"
  end
end
