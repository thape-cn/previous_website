require 'test_helper'

class DesigningControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get designing_index_path
    assert_response :moved_permanently
  end

  test "should get show" do
    get designing_path(people(:one))
    assert_response :moved_permanently
  end

end
