class PasswordsController < ApplicationController

    def index 
        passwords = Password.where(user_id: params[:user_id])
        # byebug
        render json: passwords
    end

    def update
        password = Password.find_by(id: params[:id]).update(password_params)
        updated_password = Password.find_by(id: params[:id])
    end


    private

    def password_params
        params.permit(:id, :key, :chain, :user_id)
    end
end
