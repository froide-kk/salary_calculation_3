require 'test_helper'

class AgeAdjustmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @age_adjustment = age_adjustments(:one)
  end

  test "should get index" do
    get age_adjustments_url
    assert_response :success
  end

  test "should get new" do
    get new_age_adjustment_url
    assert_response :success
  end

  test "should create age_adjustment" do
    assert_difference('AgeAdjustment.count') do
      post age_adjustments_url, params: { age_adjustment: { name: @age_adjustment.name, value: @age_adjustment.value } }
    end

    assert_redirected_to age_adjustment_url(AgeAdjustment.last)
  end

  test "should show age_adjustment" do
    get age_adjustment_url(@age_adjustment)
    assert_response :success
  end

  test "should get edit" do
    get edit_age_adjustment_url(@age_adjustment)
    assert_response :success
  end

  test "should update age_adjustment" do
    patch age_adjustment_url(@age_adjustment), params: { age_adjustment: { name: @age_adjustment.name, value: @age_adjustment.value } }
    assert_redirected_to age_adjustment_url(@age_adjustment)
  end

  test "should destroy age_adjustment" do
    assert_difference('AgeAdjustment.count', -1) do
      delete age_adjustment_url(@age_adjustment)
    end

    assert_redirected_to age_adjustments_url
  end
end
