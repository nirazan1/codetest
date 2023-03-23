class ApiController < ActionController::API
  include ActionController::HttpAuthentication::Digest::ControllerMethods

  before_action :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      user = User.find_by(email: username)
      if user && user.authenticate(request.env['HTTP_AUTHORIZATION'])
        user.password_digest
      else
        nil
      end
    end
  end
end
