module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :authenticate
  end

  private
    def authenticate
      if authenticated_user = User.find_by(id: cookies.encrypted[:user_id])
        Current.user = authenticated_user
      else
        redirect_to new_session_url
      end
    end

    def login_user(user)
      cookies.encrypted[:user_id] = user.id
    end

    def logout_user
      cookies.encrypted[:user_id] = nil
    end
end
