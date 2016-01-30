class Key < ActiveRecord::Base
  belongs_to :cyfer
  belongs_to :user
end
