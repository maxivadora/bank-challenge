module ExceptionHandler
  extend ActiveSupport::Concern

  class InvalidToken < StandardError; end
  class MissingToken < StandardError; end
  class NotAuthorized < StandardError; end

  included do
    # ActiveRecord
    rescue_from ActiveRecord::RecordInvalid, with: :error_422
    rescue_from ActiveRecord::RecordNotFound, with: :error_404
    # Custom
    rescue_from ExceptionHandler::InvalidToken, with: :error_401
    rescue_from ExceptionHandler::MissingToken, with: :error_401
    rescue_from ExceptionHandler::NotAuthorized, with: :error_401
  end

  private
  
  def error_401 e
    render json: { message: e.message }, status: :unauthorized
  end

  def error_404 e
    render json: { message: e.message }, status: :not_found
  end

  def error_422 e
    render json: { message: e.message }, status: :unprocessable_entity
  end

end