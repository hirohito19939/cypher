class Cyfer < ActiveRecord::Base
  has_many :keys
  has_many :users, through: :keys
end
