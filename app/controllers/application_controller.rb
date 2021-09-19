class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_response


    private 


    def render_unprocessable_entity_response(e)
        render json: { errors: ["All fields must be filled out"] }, status: :unprocessable_entity
    end

    def render_record_not_found_response
        render json: { errors: ["Please enter a valid username & password."] }, status: :not_found
    end

    

    def authorize
        unless session.include?(:user_id)
        render json: { errors: ['Please login to proceed to your page...'] },
                status: :unauthorized
        end
    end


end
