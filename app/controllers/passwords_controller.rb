class PasswordsController < ApplicationController

    def index 
        passwords = Password.where(user_id: params[:user_id])
        # byebug
        render json: passwords
    end

    def update
        password = Password.find_by(id: params[:id]).update(password_params)
        updated_password = Password.find_by(id: params[:id])
        render json: updated_password, status: 200
    end

    def create
        password = Password.create!(password_params)
        render json: password, status: 200
    end

    def destroy 
        password = Password.find_by(id: params[:id]).destroy 
        render json: password, status: 200
    end


    private

    def password_params
        params.permit(:id, :key, :chain, :user_id)
    end
end
