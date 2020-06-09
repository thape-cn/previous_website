class Work < ApplicationRecord
  belongs_to :city
  translates :project_name, :client, :services, :team, :cooperation, :awards
end
