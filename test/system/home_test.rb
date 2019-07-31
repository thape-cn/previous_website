require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_text "武汉福星惠誉福莱中心"
  end
end
