require 'test_helper'

class UserSControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_ = user_s(:one)
  end

  test "should get index" do
    get user_s_url
    assert_response :success
  end

  test "should get new" do
    get new_user__url
    assert_response :success
  end

  test "should create user_" do
    assert_difference('User.count') do
      post user_s_url, params: { user_: { age: @user_.age, name: @user_.name } }
    end

    assert_redirected_to user__url(User.last)
  end

  test "should show user_" do
    get user__url(@user_)
    assert_response :success
  end

  test "should get edit" do
    get edit_user__url(@user_)
    assert_response :success
  end

  test "should update user_" do
    patch user__url(@user_), params: { user_: { age: @user_.age, name: @user_.name } }
    assert_redirected_to user__url(@user_)
  end

  test "should destroy user_" do
    assert_difference('User.count', -1) do
      delete user__url(@user_)
    end

    assert_redirected_to user_s_url
  end
end
