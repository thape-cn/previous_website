module Admin
  class PicturesController < Admin::ApplicationController
    before_action :logged_in_user
    def index
      @pictures = Picture.all.order(id: :desc).page(params[:page]).per(params[:per_page])
    end

    def edit
      @page = params[:page]
      @picture = Picture.find(params[:id])
    end

    def update
      @page = params[:page].present || 1
      @picture = Picture.find(params[:id])
      redirect_to admin_pictures_path(page: @page), notice: '更新成功'
    end

    def destroy
    end
  end
end
