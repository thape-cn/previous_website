require 'csv'

module Admin
  class ProjectMessagesController < Admin::ApplicationController
    before_action :logged_in_user

    def index
      messages = ProjectMessage.all.order(id: :desc)
      respond_to do |format|
        format.html do
          @project_messages = messages.page(params[:page]).per(params[:per_page])
        end
        format.csv do
          render_csv_header "thape project messages"
          csv_res = CSV.generate do |csv|
            csv << %w[序号 公司 姓名 联系电话 项目类型 服务类型 项目面积 合作内容 留言时间 广告评分]
            messages.each do |message|
              csv << [
                message.id,
                message.company,
                message.name,
                message.phone,
                message.project_type,
                message.service_type,
                message.project_area,
                message.message,
                message.created_at,
                message.spam_score
              ]
            end
          end
          send_data "\xEF\xBB\xBF#{csv_res}"
        end
      end
    end

    def show
      @project_message = ProjectMessage.find(params[:id])
    end

    def destroy
      message = ProjectMessage.find(params[:id])
      message.destroy
      redirect_to admin_project_messages_path, notice: "#{message.message&.truncate(30)}, 删除成功"
    end
  end
end
