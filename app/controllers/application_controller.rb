class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      @member  = Member.find_by_username user_name

      !@member.nil? && @member.password == password

      #user_name == 'admin' && password == 'password'
      #user_name == 'aktdan' && password == 'rubyonrails'
    end
  end
  
end
