module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    # ActiveRecord
    rescue_from ActiveRecord::RecordInvalid, with: :error_422
    rescue_from ActiveRecord::RecordNotFound, with: :error_404
  end

  private

  def error_404 e
    render json: { message: e.message }, status: :not_found
  end

  def error_422 e
    render json: { message: e.message }, status: :unprocessable_entity
  end

end