class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # after_filter :allow_iframe
  before_action :set_locale

  def default_url_options options = {}
    {locale: I18n.locale}
  end

  private

  def allow_iframe
    response.headers.delete "X-Frame-Options"
  end

  def set_locale
    I18n.locale = params[:locale] || "vi"
  end
end





