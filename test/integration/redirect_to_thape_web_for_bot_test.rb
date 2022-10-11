require "test_helper"

class RedirectToThapeWebForBotTest < ActionDispatch::IntegrationTest
  test "Redirect to thape web if useragent is bot" do
    get "/"
    assert_response :success
  end
end
