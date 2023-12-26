require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  test "should not save picture without image" do
    picture = Picture.new
    assert_not picture.save, "Save the pciture without a image"
  end

  test "save article with image" do
    picture = pictures(:picture_one)
    assert picture.save, "Save the pciture with a image"
  end
end
