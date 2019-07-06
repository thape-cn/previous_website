require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get building" do
    get services_building_url
    assert_response :success
  end

end
