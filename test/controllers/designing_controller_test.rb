require 'test_helper'

class DesigningControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get designing_index_url
    assert_response :success
  end

  test "should get show" do
    get designing_show_url
    assert_response :success
  end

end
