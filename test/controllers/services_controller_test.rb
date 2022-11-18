require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get building" do
    get building_path
    assert_response :moved_permanently
  end
end
