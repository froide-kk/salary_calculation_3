require 'test_helper'

class SettingValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting_value = setting_values(:one)
  end

  test "should get index" do
    get setting_values_url
    assert_response :success
  end

  test "should get new" do
    get new_setting_value_url
    assert_response :success
  end

  test "should create setting_value" do
    assert_difference('SettingValue.count') do
      post setting_values_url, params: { setting_value: { name: @setting_value.name, value: @setting_value.value, year: @setting_value.year } }
    end

    assert_redirected_to setting_value_url(SettingValue.last)
  end

  test "should show setting_value" do
    get setting_value_url(@setting_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_setting_value_url(@setting_value)
    assert_response :success
  end

  test "should update setting_value" do
    patch setting_value_url(@setting_value), params: { setting_value: { name: @setting_value.name, value: @setting_value.value, year: @setting_value.year } }
    assert_redirected_to setting_value_url(@setting_value)
  end

  test "should destroy setting_value" do
    assert_difference('SettingValue.count', -1) do
      delete setting_value_url(@setting_value)
    end

    assert_redirected_to setting_values_url
  end
end
