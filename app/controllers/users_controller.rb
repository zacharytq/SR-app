class UsersController < ApplicationController
    def new
        @user = User.new
        @user.build_person()
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        if current_user
            @user = User.find(params[:id])
        else
            redirect_to root_path
        end
    end

    private
    def user_params
        params.require(:user).permit(:name,
                                     :password,
                                     person_attributes: [
                                         :first_name,
                                         :last_name,
                                         :bio
                                     ])
    end
end