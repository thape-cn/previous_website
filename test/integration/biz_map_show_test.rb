require 'test_helper'

class BizMapShowTest < ActionDispatch::IntegrationTest
  test "can see the biz map page" do
    get "/cn/biz-map"
    assert_response :moved_permanently
  end
end
