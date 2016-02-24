class Cyfer < ActiveRecord::Base
  has_many :keys
  has_many :users, through: :keys
  has_many :comments
  has_many :locations

  validates :name, presence: true
  validates :date_time, presence: true
  validate :add_error_sample

  def add_error_sample
    # nameが空のときにエラーメッセージを追加する
    if name.empty?
      errors.add(:name, "に関係するエラーを追加")
      errors[:base] << "モデル全体に関係するエラーを追加"
    end
end

  accepts_nested_attributes_for :locations

  has_attached_file :avatar, styles: { medium: "360x300#", thumb: "100x100" }
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]
end
