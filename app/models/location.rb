class Location < ActiveRecord::Base
geocoded_by :address   # 住所またはIPアドレス
after_validation :geocode 

belongs_to :cyfer
end