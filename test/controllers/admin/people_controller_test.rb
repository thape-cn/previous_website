require 'test_helper'

class Admin::PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_person = admin_people(:one)
  end

  test "should get index" do
    get admin_people_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_person_url
    assert_response :success
  end

  test "should create admin_person" do
    assert_difference('Admin::Person.count') do
      post admin_people_url, params: { admin_person: {  } }
    end

    assert_redirected_to admin_person_url(Admin::Person.last)
  end

  test "should show admin_person" do
    get admin_person_url(@admin_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_person_url(@admin_person)
    assert_response :success
  end

  test "should update admin_person" do
    patch admin_person_url(@admin_person), params: { admin_person: {  } }
    assert_redirected_to admin_person_url(@admin_person)
  end

  test "should destroy admin_person" do
    assert_difference('Admin::Person.count', -1) do
      delete admin_person_url(@admin_person)
    end

    assert_redirected_to admin_people_url
  end
end
