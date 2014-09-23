class AddAttachmentAvatarToWebnairs < ActiveRecord::Migration
  def self.up
    change_table :webnairs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :webnairs, :avatar
  end
end
