require "test_helper"

class RedirectToThapeWebForBotTest < ActionDispatch::IntegrationTest
  test "Redirect to thape web in homepage" do
    get "/", headers: { 'HTTP_USER_AGENT' => "Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu^Com/search/spider.html\x09" }
    assert_response :moved_permanently
    assert_redirected_to 'https://www.thape.com/'
  end

  test "Redirect to thape web with correct URL" do
    get "/cn/biz-map", headers: { 'HTTP_USER_AGENT' => "Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu^Com/search/spider.html\x09" }
    assert_response :moved_permanently
    assert_redirected_to 'https://www.thape.com/cn/biz-map'
  end
end
