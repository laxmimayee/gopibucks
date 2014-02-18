class RegistrationsController < Devise::RegistrationsController

	def update
    @user = User.find(current_user.id)

    if current_user.Role == "Producer/BeatMaker/Composer"

    @user.update_without_password(devise_parameter_sanitizer.sanitize(:account_update))
    redirect_to new_session_path(resource)
    
	else

	@user.update_with_password(devise_parameter_sanitizer.sanitize(:account_update))
	redirect_to new_session_path(resource)
 
  	end


	end

	



	
 end
