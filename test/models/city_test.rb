require 'test_helper'

class CityTest < ActiveSupport::TestCase
  test "valid?" do
    city = cities(:one)
    assert picture.valid?, true
  end
end
