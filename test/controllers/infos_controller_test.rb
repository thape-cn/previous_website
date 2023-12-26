require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get infos_path
    assert_response :moved_permanently
  end

  test "should get show" do
    get info_path(infos(:info_one))
    assert_response :moved_permanently
  end
end
