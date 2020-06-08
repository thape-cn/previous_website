require 'test_helper'

class CityTest < ActiveSupport::TestCase
  test "valid?" do
    city = cities(:one)
    assert city.valid?, true
  end
end
