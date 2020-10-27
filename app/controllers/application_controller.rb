class ApplicationController < ActionController::Base
    protect_from_forgery
    helper_method :current_user

    def logged_in?
        !!current_user
    end
  
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def cleared_objects(things)
        # input: array of documents, events
        # ouput: array of objects the user is cleared to see
        output = things.filter {|t| current_user.user_clearance_options.any? {|i| i == t.security_clearance}}
        output
    end

end
