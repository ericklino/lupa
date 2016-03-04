class SessionsController < Devise::SessionsController

def new
  super
end

def create
  self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    if current_user.admin?
      redirect_to rails_admin_path
    else
      redirect_to root_path
    end
end

end
