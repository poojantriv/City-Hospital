class ApplicationController < ActionController::Base
helper_method :current_user
before_action :authorised 
before_action :admin?
helper_method :ward


  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  # Defined a method that gets input from the session controller in session[:ward_id] 
  # We use this method in patients#index to display respective table
  # IMP : application controller methods can be used everywhere if declared HELPER
  def ward
  	if session[:ward_id] == "positive"
  		return "Positive"
  	elsif session[:ward_id] == "suspected"
  		return "Suspected"
  	end
  end

  def authorised 
  	redirect_to login_url if current_user.nil?
  end

  def admin?
    if !current_user.nil?
      @admin = current_user.email
      if @admin == "sdmc_documents"
        return true
      end
    end 
  end
end
