class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    
    def current_user
        @_current_user ||= session[:current_user_id] &&
        Student.find_by(id: session[:current_user_id])
    end
end
