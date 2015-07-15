class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :admin_login
  layout :admin_layout
  def after_sign_in_path_for(resource_or_scope)
   if current_admin
    properties_path
  else
   root_path
 end
end

def admin_layout
 if current_admin
   return 'admin'
 else
   return 'application'
 end
end

def after_sign_up_path_for(resource_or_scope)
  after_sign_in_path_for(resource_or_scope)
end

def admin_login
   if !current_admin && params[:controller] == "devise/registrations"
   
   redirect_to new_admin_session_path
   end
   end
   
end


  


  