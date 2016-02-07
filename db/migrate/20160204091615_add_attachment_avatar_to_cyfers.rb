class AddAttachmentAvatarToCyfers < ActiveRecord::Migration
  def self.up
    change_table :cyfers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :cyfers, :avatar
  end
end
