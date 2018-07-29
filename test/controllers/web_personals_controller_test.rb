require 'test_helper'

class WebPersonalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_personal = web_personals(:one)
  end

  test "should get index" do
    get web_personals_url
    assert_response :success
  end

  test "should get new" do
    get new_web_personal_url
    assert_response :success
  end

  test "should create web_personal" do
    assert_difference('WebPersonal.count') do
      post web_personals_url, params: { web_personal: {  } }
    end

    assert_redirected_to web_personal_url(WebPersonal.last)
  end

  test "should show web_personal" do
    get web_personal_url(@web_personal)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_personal_url(@web_personal)
    assert_response :success
  end

  test "should update web_personal" do
    patch web_personal_url(@web_personal), params: { web_personal: {  } }
    assert_redirected_to web_personal_url(@web_personal)
  end

  test "should destroy web_personal" do
    assert_difference('WebPersonal.count', -1) do
      delete web_personal_url(@web_personal)
    end

    assert_redirected_to web_personals_url
  end
end
