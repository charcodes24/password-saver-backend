class UsersController < ApplicationController
    before_action :authorize, except: :create

    def create
        # byebug
        user = User.create!(user_params)
        # byebug
        render json: user, status: :created
    end




    private

    def user_params
        user_params = params.permit(:name, :username, :password, :password_confirmation)
    end
end
