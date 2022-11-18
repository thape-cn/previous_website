require 'test_helper'

class CasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cases_path
    assert_response :moved_permanently
  end

  test "should get show" do
    get case_path(cases(:one))
    assert_response :moved_permanently
  end
end
