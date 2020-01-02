require 'test_helper'

class Tianhua2019Test < ActiveSupport::TestCase
  test "Tianhua2019 valid" do
    tianhua2019_one = tianhua2019s(:one)
    assert tianhua2019_one.valid?
  end
end
