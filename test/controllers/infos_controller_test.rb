require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get infos_path
    assert_response :success
  end

  test "should get show" do
    get info_path(infos(:one))
    assert_response :success
  end
end
