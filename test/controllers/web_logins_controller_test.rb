require 'test_helper'

class WebLoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_login = web_logins(:one)
  end

  test "should get index" do
    get web_logins_url
    assert_response :success
  end

  test "should get new" do
    get new_web_login_url
    assert_response :success
  end

  test "should create web_login" do
    assert_difference('WebLogin.count') do
      post web_logins_url, params: { web_login: {  } }
    end

    assert_redirected_to web_login_url(WebLogin.last)
  end

  test "should show web_login" do
    get web_login_url(@web_login)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_login_url(@web_login)
    assert_response :success
  end

  test "should update web_login" do
    patch web_login_url(@web_login), params: { web_login: {  } }
    assert_redirected_to web_login_url(@web_login)
  end

  test "should destroy web_login" do
    assert_difference('WebLogin.count', -1) do
      delete web_login_url(@web_login)
    end

    assert_redirected_to web_logins_url
  end
end
