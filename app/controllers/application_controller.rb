class ApplicationController < ActionController::API
  include ExceptionHandler
  before_action :authenticate_user!
  before_action :set_default_response_format!
  
  serialization_scope :view_context

  private

  def set_default_response_format!
    request.format = :json
  end

  def current_user
    @current_user = AuthorizeApiRequest.new(request.headers).perform
  end

  def authenticate_user!
    return true if current_user
    raise ExceptionHandler::NotAuthorized, "Invalid credential"
  end
end
