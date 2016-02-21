class Location < ActiveRecord::Base
  geocoded_by :address   # 住所またはIPアドレス
after_validation :geocode 
end