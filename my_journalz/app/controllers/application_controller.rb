class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def after_sign_up_path_for(resource)
    new_user_profile_path # <- Path you want to redirect the user to.
  end

	def after_sign_in_path_for(resource)
  		if current_user.profile.nil?
   			new_user_profile_path(current_user)
  		else
  			user_profile_path(current_user)
  		end
  	end

  protect_from_forgery with: :exception
end