module Admin
  class InsightsController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_insight, only: [:edit, :update, :destroy]

    def index
      insights = Insight.all.order(:position)
      insights = insights.where(category_status: params[:category_status]) if params[:category_status].present?
      @insights = insights.page(params[:page]).per(params[:per_page])
    end

    def new
      @insight = Insight.new
    end

    def create
      @insight = Insight.create(insight_params)
      redirect_to admin_insights_path, notice: "#{@insight.title&.truncate(30)}, 创建成功"
    end

    def edit
    end

    def update
      @insight.update(insight_params)
      redirect_to admin_insights_path, notice: "#{@insight.title&.truncate(30)}, 更新成功"
    end

    def destroy
      @insight.destroy
      redirect_to admin_insights_path, notice: "删除成功"
    end

    private

      def set_insight
        @insight = Insight.find(params[:id])
      end

      def insight_params
        params[:insight].permit!
      end
  end
end
