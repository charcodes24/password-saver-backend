class UsersController < ApplicationController

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id 
        render json: customer, status: :created
    end




    private

    def user_params
        user_params = params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
