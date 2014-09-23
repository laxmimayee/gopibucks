class Presentation < ActiveRecord::Base
	belongs_to :user
	
	attr_accessible :title, :description, :avatar, :user_id
	 
	has_attached_file :avatar, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => ["application/mspowerpoint","application/vnd.ms-powerpoint","application/vnd.openxmlformats-officedocument.presentationml.presentation"]
 
 def avatar_from_url(url)
    self.avatar = open(url)
 end
 
end
