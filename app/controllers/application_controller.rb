class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |e|
  	flash[:notice] = "access denied"
  	redirect_to root_url
  end
end
