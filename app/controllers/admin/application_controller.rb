class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  prepend_before_action :set_locale

  before_filter :authenticate_admin!

  private

  def set_locale
    params[:locale] ||= :ru
  end
end
