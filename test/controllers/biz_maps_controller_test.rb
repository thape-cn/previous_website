require 'test_helper'

class BizMapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get biz_map_path
    assert_response :success
  end
end
