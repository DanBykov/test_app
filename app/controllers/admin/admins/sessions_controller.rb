class Admin::Admins::SessionsController < Devise::SessionsController
  protected
    def after_accept_path_for(resource)
      admin_root_path
    end
end
