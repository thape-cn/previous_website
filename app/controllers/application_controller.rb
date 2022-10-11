class ApplicationController < ActionController::Base
  before_action :redirect_to_thape_web_if_bot
  before_action :set_locale
  before_action :prepare_seo_variable

  include Admin::SessionsHelper

  private

    def redirect_to_thape_web_if_bot
      if browser.bot.search_engine?
        redirect_to "https://www.thape.com"
      end
    end

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
