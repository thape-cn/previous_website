class Case < ApplicationRecord
  has_many :case_pictures
  accepts_nested_attributes_for :case_pictures
  mount_uploader :snapshot, SnapshotUploader

  def self.professional_options
    [['建筑', 1], ['规划', 2], ['室内', 3], ['景观', 4]].freeze
  end

  def self.market_options
    [['居住建筑', 1], ['商业建筑', 2], ['办公建筑', 3], ['文教体卫', 4], ['城市更新', 5], ['旅游度假', 6]].freeze
  end
end
