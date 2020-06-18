module Admin
  class MessageController < Admin::ApplicationController
    before_action :logged_in_user

    def index
      @messages = GuestMessage.all.order(id: :desc).page(params[:page]).per(params[:per_page])
    end
  end
end
