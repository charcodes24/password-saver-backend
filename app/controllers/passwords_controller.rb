class PasswordsController < ApplicationController

    def show 
        passwords = Password.where(user_id: params[:user_id])
        byebug
        render json: passwords, include: :user
    end


    private

    def password_params
        params.permit(:password_for, :password, :user_id)
    end
end
