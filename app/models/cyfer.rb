class Cyfer < ActiveRecord::Base
  has_many :keys
  has_many :users, through: :keys
  has_many :comments
  has_many :locations

  validates :name, presence: true
  validates :date_time, presence: true
  validates :place, presence: true
  validates :avatar, presence: true
  validates :detail, presence: true


  accepts_nested_attributes_for :locations

  has_attached_file :avatar, styles: { medium: "360x300#", thumb: "100x100" }
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]
end
