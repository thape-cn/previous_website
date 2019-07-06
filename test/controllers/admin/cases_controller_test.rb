require 'test_helper'

class Admin::CasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_case = admin_cases(:one)
  end

  test "should get index" do
    get admin_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_case_url
    assert_response :success
  end

  test "should create admin_case" do
    assert_difference('Admin::Case.count') do
      post admin_cases_url, params: { admin_case: {  } }
    end

    assert_redirected_to admin_case_url(Admin::Case.last)
  end

  test "should show admin_case" do
    get admin_case_url(@admin_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_case_url(@admin_case)
    assert_response :success
  end

  test "should update admin_case" do
    patch admin_case_url(@admin_case), params: { admin_case: {  } }
    assert_redirected_to admin_case_url(@admin_case)
  end

  test "should destroy admin_case" do
    assert_difference('Admin::Case.count', -1) do
      delete admin_case_url(@admin_case)
    end

    assert_redirected_to admin_cases_url
  end
end
