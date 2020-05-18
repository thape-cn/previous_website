class MapContact < ApplicationRecord
  translates :name, :long_name, :alt_name, :address, :tel, :fax
end
