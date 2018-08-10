require 'test_helper'

class PersonalInfoPdfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_info_pdf = personal_info_pdfs(:one)
  end

  test "should get index" do
    get personal_info_pdfs_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_info_pdf_url
    assert_response :success
  end

  test "should create personal_info_pdf" do
    assert_difference('PersonalInfoPdf.count') do
      post personal_info_pdfs_url, params: { personal_info_pdf: {  } }
    end

    assert_redirected_to personal_info_pdf_url(PersonalInfoPdf.last)
  end

  test "should show personal_info_pdf" do
    get personal_info_pdf_url(@personal_info_pdf)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_info_pdf_url(@personal_info_pdf)
    assert_response :success
  end

  test "should update personal_info_pdf" do
    patch personal_info_pdf_url(@personal_info_pdf), params: { personal_info_pdf: {  } }
    assert_redirected_to personal_info_pdf_url(@personal_info_pdf)
  end

  test "should destroy personal_info_pdf" do
    assert_difference('PersonalInfoPdf.count', -1) do
      delete personal_info_pdf_url(@personal_info_pdf)
    end

    assert_redirected_to personal_info_pdfs_url
  end
end
