class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    # raise request.env["omniauth.auth"].to_yaml
    user = User.from_omniauth(request.env["omniauth.auth"])
    #omniauth auth is the token that comes back from Facebook
    
    # if user.persisted?
      sign_in_and_redirect user
       flash.notice = "Signed in!"
    # else
    #   session["devise.user_attributes"] = user.attributes
    #   redirect_to new_user_registration_url
    # end
  end
  alias_method :facebook, :all
end