require 'test_helper'

class SupportResidencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_residence = support_residences(:one)
  end

  test "should get index" do
    get support_residences_url
    assert_response :success
  end

  test "should get new" do
    get new_support_residence_url
    assert_response :success
  end

  test "should create support_residence" do
    assert_difference('SupportResidence.count') do
      post support_residences_url, params: { support_residence: { name: @support_residence.name, personal_information_id: @support_residence.personal_information_id, price: @support_residence.price, start_month: @support_residence.start_month } }
    end

    assert_redirected_to support_residence_url(SupportResidence.last)
  end

  test "should show support_residence" do
    get support_residence_url(@support_residence)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_residence_url(@support_residence)
    assert_response :success
  end

  test "should update support_residence" do
    patch support_residence_url(@support_residence), params: { support_residence: { name: @support_residence.name, personal_information_id: @support_residence.personal_information_id, price: @support_residence.price, start_month: @support_residence.start_month } }
    assert_redirected_to support_residence_url(@support_residence)
  end

  test "should destroy support_residence" do
    assert_difference('SupportResidence.count', -1) do
      delete support_residence_url(@support_residence)
    end

    assert_redirected_to support_residences_url
  end
end
