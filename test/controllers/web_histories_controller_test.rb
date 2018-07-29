require 'test_helper'

class WebHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_history = web_histories(:one)
  end

  test "should get index" do
    get web_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_web_history_url
    assert_response :success
  end

  test "should create web_history" do
    assert_difference('WebHistory.count') do
      post web_histories_url, params: { web_history: {  } }
    end

    assert_redirected_to web_history_url(WebHistory.last)
  end

  test "should show web_history" do
    get web_history_url(@web_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_history_url(@web_history)
    assert_response :success
  end

  test "should update web_history" do
    patch web_history_url(@web_history), params: { web_history: {  } }
    assert_redirected_to web_history_url(@web_history)
  end

  test "should destroy web_history" do
    assert_difference('WebHistory.count', -1) do
      delete web_history_url(@web_history)
    end

    assert_redirected_to web_histories_url
  end
end
