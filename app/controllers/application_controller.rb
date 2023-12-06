class ApplicationController < ActionController::Base
    
    helper_method :current_user
    
private
    helper_method :current_user
    def current_user
        if session[:login_uid]
            User.find_by(uid: session[:login_uid])
        end
    end
end
