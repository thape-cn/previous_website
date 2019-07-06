require 'test_helper'

class Admin::SeosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_seo = admin_seos(:one)
  end

  test "should get index" do
    get admin_seos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_seo_url
    assert_response :success
  end

  test "should create admin_seo" do
    assert_difference('Admin::Seo.count') do
      post admin_seos_url, params: { admin_seo: {  } }
    end

    assert_redirected_to admin_seo_url(Admin::Seo.last)
  end

  test "should show admin_seo" do
    get admin_seo_url(@admin_seo)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_seo_url(@admin_seo)
    assert_response :success
  end

  test "should update admin_seo" do
    patch admin_seo_url(@admin_seo), params: { admin_seo: {  } }
    assert_redirected_to admin_seo_url(@admin_seo)
  end

  test "should destroy admin_seo" do
    assert_difference('Admin::Seo.count', -1) do
      delete admin_seo_url(@admin_seo)
    end

    assert_redirected_to admin_seos_url
  end
end
