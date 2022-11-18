require 'test_helper'

class ManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get management_index_path
    assert_response :moved_permanently
  end

  test "should get show" do
    get management_path(people(:one))
    assert_response :moved_permanently
  end
end
