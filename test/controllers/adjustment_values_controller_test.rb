require 'test_helper'

class AdjustmentValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adjustment_value = adjustment_values(:one)
  end

  test "should get index" do
    get adjustment_values_url
    assert_response :success
  end

  test "should get new" do
    get new_adjustment_value_url
    assert_response :success
  end

  test "should create adjustment_value" do
    assert_difference('AdjustmentValue.count') do
      post adjustment_values_url, params: { adjustment_value: { adjustment_list: @adjustment_value.adjustment_list, value: @adjustment_value.value } }
    end

    assert_redirected_to adjustment_value_url(AdjustmentValue.last)
  end

  test "should show adjustment_value" do
    get adjustment_value_url(@adjustment_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_adjustment_value_url(@adjustment_value)
    assert_response :success
  end

  test "should update adjustment_value" do
    patch adjustment_value_url(@adjustment_value), params: { adjustment_value: { adjustment_list: @adjustment_value.adjustment_list, value: @adjustment_value.value } }
    assert_redirected_to adjustment_value_url(@adjustment_value)
  end

  test "should destroy adjustment_value" do
    assert_difference('AdjustmentValue.count', -1) do
      delete adjustment_value_url(@adjustment_value)
    end

    assert_redirected_to adjustment_values_url
  end
end
