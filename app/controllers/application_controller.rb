class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      if resource.has_role? :MasterAdmin
        rails_admin_path
      elsif resource.has_role? :Admin
        rails_admin_path
      elsif resource.has_role? :RegularUser
        root_path
      else
        root_path
      end
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

end
