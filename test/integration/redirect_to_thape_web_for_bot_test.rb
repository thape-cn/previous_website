require "test_helper"

class RedirectToThapeWebForBotTest < ActionDispatch::IntegrationTest
  test "Redirect to thape web if useragent is bot" do
    get "/", headers: { 'HTTP_USER_AGENT' => "Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu^Com/search/spider.html\x09" }
    assert_response :redirect
  end
end
