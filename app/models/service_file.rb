class ServiceFile < ApplicationRecord
  translates :building_intro
  translates :interior_intro
  translates :planning_intro
  translates :landscape_intro
  translates :vetting_intro
  translates :consluting_intro
  translates :vrtech_intro

  mount_uploader :interior_intro_file, ServiceFileUploader
end
