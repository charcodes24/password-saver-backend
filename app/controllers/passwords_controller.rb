class PasswordsController < ApplicationController

    def index 
        passwords = Password.where(user_id: params[:user_id])
        byebug
        render json: passwords
    end


    private

    def password_params
        params.permit(:password_for, :password, :user_id)
    end
end
