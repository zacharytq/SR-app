class SessionsController < ApplicationController

    def destroy
        session.delete :user_id
        redirect_to root_path
    end

    def new
        if current_user
            redirect_to user_path(current_user)
        end
    end

    def create
        user = User.find_by(first_name: params[:first_name], last_name: params[:last_name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            render :new
        end
    end
    
end