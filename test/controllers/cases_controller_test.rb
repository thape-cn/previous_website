require 'test_helper'

class CasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cases_path
    assert_response :success
  end

  test "should get show" do
    get case_path(cases(:one))
    assert_response :success
  end
end
