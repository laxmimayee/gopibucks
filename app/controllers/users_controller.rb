class UsersController < ApplicationController

=begin
def create
	if user.save?
    	if current_user.role == ""
       #if(Student.find_by_email("#{current_user.email}")!= nil)
          redirect_to(:controller => 'users',:action => new_registration_path(resource_name))
        elsif  current_user.role=="Producer"
          redirect_to(:controller => 'users',:action => 'index')
        end
    end
end

def stored_location_for(resource)
  nil
end

def after_sign_in_path_for(resource)
	redirect_to :user_edit_path
  #path_to_redirect_to
end
=end


def index
   
  @users=User.all 
   

end


#def update
#if @user.save?
 # redirect_to 'confirmation_path'
#else


 # if @user.save
  #    flash[:notice] = "User #{@user.email} is sucessfully created"
   #   redirect_to :action => :liststudent
      #redirect_to :action => :studentlogin
    #else
      
     # flash[:error] = "Student #{@student.username} is not created" 


#end 
def update

end

 


end