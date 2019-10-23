class MapContact < ApplicationRecord
  translates :name, :address, :tel, :fax
end
