class Webnair < ActiveRecord::Base
  belongs_to :user
  has_many :presentations
  
	attr_accessible :title, :description, :choice, :ppt, :user_id
	 
	has_attached_file :ppt#, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :ppt, :content_type => ["application/mspowerpoint","application/vnd.ms-powerpoint","application/vnd.openxmlformats-officedocument.presentationml.presentation"]
	# validates :title, :description, :choice, presence: true
	#validates :title, uniqueness: true
  	validates :ppt, :attachment_presence => true

end