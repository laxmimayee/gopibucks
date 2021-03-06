
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 #protect_from_forgery with: :exception

 before_action :configure_devise_permitted_parameters, if: :devise_controller?

 
 private

    def configure_devise_permitted_parameters
      registration_params = [:delete_pimage,:state_code,:ArtistName,:Firstname,:Lastname,:Country,:Howdouknow,:Terms, :email,:Role,:provider,:uid,:password, :password_confirmation,:About,:Street,:HomeTown,:StageName,:StateProvince,:Artist_blog,:Facebook,:Twitter,:MySpace,:Soundcloud,:GooglePlus,:YouTube,:Soundclick,:Instagram,:pimage ]

                if params[:action] == 'update'
                  devise_parameter_sanitizer.for(:account_update) { 
                    |u| u.permit(registration_params << :current_password )
                   
                  }
                   else params[:action] == 'create'
                    devise_parameter_sanitizer.for(:sign_up) { 
                    |u| u.permit(registration_params) 
                     
                  }
                end
    end

              def after_sign_in_path_for(resource)

              request.env['omniauth.origin'] || stored_location_for(resource) || root_path
              end

 
               def after_sign_up_path_for(resource)
               confirmation_path
                end



end






