require 'test_helper'

class Admin::InfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_info = admin_infos(:one)
  end

  test "should get index" do
    get admin_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_info_url
    assert_response :success
  end

  test "should create admin_info" do
    assert_difference('Admin::Info.count') do
      post admin_infos_url, params: { admin_info: {  } }
    end

    assert_redirected_to admin_info_url(Admin::Info.last)
  end

  test "should show admin_info" do
    get admin_info_url(@admin_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_info_url(@admin_info)
    assert_response :success
  end

  test "should update admin_info" do
    patch admin_info_url(@admin_info), params: { admin_info: {  } }
    assert_redirected_to admin_info_url(@admin_info)
  end

  test "should destroy admin_info" do
    assert_difference('Admin::Info.count', -1) do
      delete admin_info_url(@admin_info)
    end

    assert_redirected_to admin_infos_url
  end
end
