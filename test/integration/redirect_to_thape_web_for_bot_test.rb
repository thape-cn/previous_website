require "test_helper"

class RedirectToThapeWebForBotTest < ActionDispatch::IntegrationTest
  test "Redirect to thape web in homepage" do
    get "/"
    assert_response :moved_permanently
    assert_redirected_to 'https://www.thape.com/'
  end

  test "Redirect to thape web with correct URL" do
    get "/cn/biz-map"
    assert_response :moved_permanently
    assert_redirected_to 'https://www.thape.com/cn/biz-map'
  end

  test "Admin still work" do
    get "/admin/login"
    assert_response :success
  end
end
