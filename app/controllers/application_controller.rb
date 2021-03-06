class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :current_user

  include SessionsHelper

  private

  def default_url_options
    {locale: I18n.locale}
  end

  def set_locale
    locale = params[:locale].to_s.strip.to_sym
    return I18n.locale = locale if I18n.available_locales.include?(locale)

    I18n.locale = I18n.default_locale
  end
end
