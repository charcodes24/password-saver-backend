class SessionsController < ApplicationController
    before_action :authorize, only: [:logout]

    #logging in user
    def create 
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user 
    end
    # def create
    #     user = User.find_by(username: params[:username])
    #     if user&.authenticate(params[:password])
    #         session[:user_id] = user.id 
    #         byebug
    #         render json: user, status: :created
    #     else 
    #         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    #     end
    # end

    def destroy 
        session.destroy 
        render json: { message: "user logged out"}
    end
end
