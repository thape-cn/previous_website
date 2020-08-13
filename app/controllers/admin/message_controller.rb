module Admin
  class MessageController < Admin::ApplicationController
    before_action :logged_in_user

    def index
      @messages = GuestMessage.all.order(id: :desc).page(params[:page]).per(params[:per_page])
    end

    def show
      @message = GuestMessage.find(params[:id])
    end

    def destroy
      m = GuestMessage.find params[:id]
      m.destroy
      redirect_to admin_message_index_path, notice: "#{m.message&.truncate(30)}, 删除成功"
    end
  end
end
