module Admin
  class PortfoliosController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_portfolio, only: [:edit, :update, :destroy]

    def index
      portfolios = Portfolio.all.order(:position)
      @portfolios = portfolios.page(params[:page]).per(params[:per_page])
    end

    def new
      @portfolio = Portfolio.new
    end

    def create
      @portfolio = Portfolio.create(portfolio_params)
      redirect_to admin_portfolios_path, notice: "#{@portfolio.title&.truncate(30)}, 创建成功"
    end

    def edit
    end

    def update
      @portfolio = Portfolio.update(portfolio_params)
      redirect_to admin_portfolios_path, notice: "更新成功"
    end

    def destroy
      @portfolio.destroy
      redirect_to admin_portfolios_path, notice: "#{@portfolio.title&.truncate(30)}, 删除成功"
    end

    private

      def set_portfolio
        @portfolio = Portfolio.find(params[:id])
      end

      def portfolio_params
        params[:portfolio].permit!
      end
  end
end
