class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed
    acts_as_token_authentication_handler_for User
    private

    def not_destroyed(err)
        render json: {errors: err.record.errors}, status: :unproccessable_entity
    end
end
