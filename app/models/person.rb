class Person < ApplicationRecord
  translates :name, :title, :introduce
  validates_uniqueness_of :url_name

  mount_uploader :avatar, AvatarUploader
  mount_uploader :photo, PhotoUploader

  before_create :set_new_position

  def self.belong_areas
    %w[上海 北京 杭州]
  end

  private

  def set_new_position
    self.position = Person.count
  end
end
