class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    before_action :authorize, only: [:show]

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

    def render_unprocessable_entity_response(e)
        render json: { errors: [e.record.errors.full_messages] }, status: :unprocessable_entity
    end

    def authorize
        unless session.include?(:user_id)
        render json: { errors: ['Unauthorized access, please login'] },
                status: :unauthorized
        end
    end
end
