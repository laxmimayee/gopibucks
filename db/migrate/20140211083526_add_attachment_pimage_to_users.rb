class AddAttachmentPimageToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :pimage
    end
  end

  def self.down
    drop_attached_file :users, :pimage
  end
end
