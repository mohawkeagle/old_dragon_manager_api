class ApplicationController < ActionController::API
  include ActionController::Serialization

  def deep_symbolize_keys(array)
    return [] unless array
    array.map do |x|
      x.symbolize_keys
    end
  end

  def get_current_user
    User.find(auth_token[:user_id])
  end

  protected

    def authenticate_request!
      unless user_id_in_token?
        render json: { errors: ['Not Authenticated'] }, status: :unauthorized
        return
      end
      @current_user = get_current_user
    rescue JWT::VerificationError, JWT::DecodeError
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    end


  private

    def http_token
      @http_token ||= if request.headers['Authorization'].present?
        request.headers['Authorization'].split(' ').last
      end
    end

    def auth_token
      @auth_token ||= JsonWebToken.decode(http_token)
    end

    def user_id_in_token?
      http_token && auth_token && auth_token[:user_id].to_i
    end
end
