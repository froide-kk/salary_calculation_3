require 'test_helper'

class FamilyAllowancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_allowance = family_allowances(:one)
  end

  test "should get index" do
    get family_allowances_url
    assert_response :success
  end

  test "should get new" do
    get new_family_allowance_url
    assert_response :success
  end

  test "should create family_allowance" do
    assert_difference('FamilyAllowance.count') do
      post family_allowances_url, params: { family_allowance: { family_type: @family_allowance.family_type, price: @family_allowance.price } }
    end

    assert_redirected_to family_allowance_url(FamilyAllowance.last)
  end

  test "should show family_allowance" do
    get family_allowance_url(@family_allowance)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_allowance_url(@family_allowance)
    assert_response :success
  end

  test "should update family_allowance" do
    patch family_allowance_url(@family_allowance), params: { family_allowance: { family_type: @family_allowance.family_type, price: @family_allowance.price } }
    assert_redirected_to family_allowance_url(@family_allowance)
  end

  test "should destroy family_allowance" do
    assert_difference('FamilyAllowance.count', -1) do
      delete family_allowance_url(@family_allowance)
    end

    assert_redirected_to family_allowances_url
  end
end
