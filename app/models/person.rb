class Person < ApplicationRecord
  has_many :city_people, dependent: :destroy
  accepts_nested_attributes_for :city_people
  has_many :cities, through: :city_people

  translates :name, :title, :introduce
  validates_uniqueness_of :url_name

  mount_uploader :avatar, AvatarUploader
  mount_uploader :photo, PhotoUploader

  before_create :set_new_position

  def cities_ids
    @_cities_ids ||= cities.pluck(:id)
  end

  def cities_ids=(values)
    select_values = values.reject(&:blank?).map(&:to_i)
    if new_record?
      (select_values - cities_ids).each do |to_new_id|
        city_people.build(city_id: to_new_id)
      end
    else
      (cities_ids - select_values).each do |to_destroy_id|
        city_people.find_by(city_id: to_destroy_id).destroy
      end
      (select_values - cities_ids).each do |to_add_id|
        city_people.create(city_id: to_add_id)
      end
    end
  end

  private

  def set_new_position
    self.position = Person.count
  end
end
