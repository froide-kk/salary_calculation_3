require 'test_helper'

class WebWagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_wage = web_wages(:one)
  end

  test "should get index" do
    get web_wages_url
    assert_response :success
  end

  test "should get new" do
    get new_web_wage_url
    assert_response :success
  end

  test "should create web_wage" do
    assert_difference('WebWage.count') do
      post web_wages_url, params: { web_wage: {  } }
    end

    assert_redirected_to web_wage_url(WebWage.last)
  end

  test "should show web_wage" do
    get web_wage_url(@web_wage)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_wage_url(@web_wage)
    assert_response :success
  end

  test "should update web_wage" do
    patch web_wage_url(@web_wage), params: { web_wage: {  } }
    assert_redirected_to web_wage_url(@web_wage)
  end

  test "should destroy web_wage" do
    assert_difference('WebWage.count', -1) do
      delete web_wage_url(@web_wage)
    end

    assert_redirected_to web_wages_url
  end
end
