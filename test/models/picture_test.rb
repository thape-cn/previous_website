require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  picture = Picture.new
  assert_not picture.save, "Save the pciture without a image"
end
