class UsersController < ApplicationController
    before_action :authorize, except: :create

    def create
        # byebug
        user = User.create!(user_params)
        session[:user_id] = user.id
        # byebug
        render json: user, status: :created
    end

    #keep user signed in 
    def show 
        user = User.find_by(id: session[:user_id])
        render json: user 
    end


    private

    def user_params
        user_params = params.permit(:name, :username, :password, :password_confirmation)
    end
end
