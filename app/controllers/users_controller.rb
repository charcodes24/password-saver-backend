class UsersController < ApplicationController
    before_action :authorize, except: :create

    def create
        # byebug
        user = User.create!(user_params)
        # byebug
        render json: user, status: :created
    end

    #keep user signed in 
    def show 
        user = User.find_by(id: session[:user_id])
        if user 
            render json: user 
        else 
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end


    private

    def user_params
        user_params = params.permit(:name, :username, :password, :password_confirmation)
    end
end
