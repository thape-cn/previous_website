class ApplicationController < ActionController::Base
  before_action :set_unleash_context
  before_action :redirect_to_thape_web_unless_admin
  before_action :set_locale
  before_action :prepare_seo_variable

  include Admin::SessionsHelper

  private
    def set_unleash_context
      @unleash_context = Unleash::Context.new(
        session_id: session.id,
        remote_address: request.remote_ip,
        user_id: session[:user_id]
      )
    end

    def redirect_to_thape_web_unless_admin
      unless request.path.start_with?('/admin')
        redirect_to "https://www.thape.com#{request.fullpath}", status: :moved_permanently
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
