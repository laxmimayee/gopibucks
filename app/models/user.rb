class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


has_attached_file :pimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

validates_attachment_content_type :pimage, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'


#validates_attachment_content_type :pimage_file_name , :pimage_content_type  => %w(image/jpeg image/jpg image/png)
 devise :database_authenticatable, :registerable,:confirmable, :recoverable, :rememberable, :trackable, :omniauthable,:validatable,:omniauth_providers => [:facebook ]
#:validatable,
attr_accessible :delete_pimage,:ArtistName,:Firstname,:Lastname,:Country,:Howdouknow,:Terms, :email, :password,:Role,:provider,:uid,:password, :password_confirmation,:About,:Street,:HomeTown,:StageName,:StateProvince,:Artist_blog,:Facebook,:Twitter,:MySpace,:Soundcloud,:GooglePlus,:YouTube,:Soundclick,:Instagram,:pimage

validates :Firstname, :Lastname, length: { maximum:25 }, presence: true
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
 #validate :mail_regex
has_one :producer_profile
validates_format_of :email,:with => Devise.email_regexp

 validate :something_was_checked

 before_validation :clear_pimage
 
  def delete_pimage=(value)
    @delete_pimage = !value.to_i.zero?
  end
  
  def delete_pimage
    !!@delete_pimage
  end

  alias_method :delete_pimage?, :delete_pimage
  
  def clear_pimage
    self.pimage = nil if delete_pimage?
  end






















def something_was_checked
    if self.Terms.blank?
      self.errors.add(:Terms, "Should Agree .. Please click the terms button ")
    end
  end

 

def email_regexp

    if email.present? and email.match (/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i)
      #(/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.(?:[A-Z]{2}|in|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)$ /)
      #\A[^@]+@[^@]+\z
      errors.add :email, "This is not a valid email format"
  

    end

  end 


  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)

    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create( Firstname:auth.extra.raw_info.name,
                            Lastname:auth.extra.raw_info.last_name,
                            Country:auth.info.city,
                            provider:auth.provider,
                            uid:auth.uid,
                            email:auth.info.email,
                            password:Devise.friendly_token[0,20],

                          )
      end     
    end
  end
end

