require 'test_helper'

class ResidenceAllowancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residence_allowance = residence_allowances(:one)
  end

  test "should get index" do
    get residence_allowances_url
    assert_response :success
  end

  test "should get new" do
    get new_residence_allowance_url
    assert_response :success
  end

  test "should create residence_allowance" do
    assert_difference('ResidenceAllowance.count') do
      post residence_allowances_url, params: { residence_allowance: { price: @residence_allowance.price, residence_type: @residence_allowance.residence_type } }
    end

    assert_redirected_to residence_allowance_url(ResidenceAllowance.last)
  end

  test "should show residence_allowance" do
    get residence_allowance_url(@residence_allowance)
    assert_response :success
  end

  test "should get edit" do
    get edit_residence_allowance_url(@residence_allowance)
    assert_response :success
  end

  test "should update residence_allowance" do
    patch residence_allowance_url(@residence_allowance), params: { residence_allowance: { price: @residence_allowance.price, residence_type: @residence_allowance.residence_type } }
    assert_redirected_to residence_allowance_url(@residence_allowance)
  end

  test "should destroy residence_allowance" do
    assert_difference('ResidenceAllowance.count', -1) do
      delete residence_allowance_url(@residence_allowance)
    end

    assert_redirected_to residence_allowances_url
  end
end
