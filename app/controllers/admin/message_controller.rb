require 'csv'

module Admin
  class MessageController < Admin::ApplicationController
    before_action :logged_in_user

    def index
      messages = GuestMessage.all.order(id: :desc)
      respond_to do |format|
        format.html do
          @messages = messages.page(params[:page]).per(params[:per_page])
        end
        format.csv do
          render_csv_header "thape web messages"
          csv_res = CSV.generate do |csv|
            csv << %w[序号 公司 姓名 联系方式 留言 留言时间 广告评分]
            messages.each do |s|
              values = []
              values << s.id
              values << s.company
              values << s.name
              values << s.contact_details
              values << s.message
              values << s.created_at
              values << s.spam_score
              csv << values
            end
          end
          send_data "\xEF\xBB\xBF#{csv_res}"
        end
      end

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
