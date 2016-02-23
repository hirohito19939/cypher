class Cyfer < ActiveRecord::Base
  has_many :keys
  has_many :users, through: :keys
  has_many :comments
  has_many :locations

  accepts_nested_attributes_for :locations

  has_attached_file :avatar, styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]
end
