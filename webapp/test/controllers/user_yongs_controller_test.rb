require 'test_helper'

class UserYongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_yong = user_yongs(:one)
  end

  test "should get index" do
    get user_yongs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_yong_url
    assert_response :success
  end

  test "should create user_yong" do
    assert_difference('UserYong.count') do
      post user_yongs_url, params: { user_yong: { age: @user_yong.age, name: @user_yong.name } }
    end

    assert_redirected_to user_yong_url(UserYong.last)
  end

  test "should show user_yong" do
    get user_yong_url(@user_yong)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_yong_url(@user_yong)
    assert_response :success
  end

  test "should update user_yong" do
    patch user_yong_url(@user_yong), params: { user_yong: { age: @user_yong.age, name: @user_yong.name } }
    assert_redirected_to user_yong_url(@user_yong)
  end

  test "should destroy user_yong" do
    assert_difference('UserYong.count', -1) do
      delete user_yong_url(@user_yong)
    end

    assert_redirected_to user_yongs_url
  end
end
