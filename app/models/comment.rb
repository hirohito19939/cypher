class Comment < ActiveRecord::Base
  belongs_to :cyfer
  belongs_to :user
end
