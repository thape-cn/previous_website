class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :prepare_seo_variable

  include Admin::SessionsHelper

  private

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def default_url_options(options = {})
      { locale: I18n.locale }
    end

    def prepare_seo_variable
      @seo = Seo.first
    end
end
