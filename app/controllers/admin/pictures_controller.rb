module Admin
  class PicturesController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_page, only: [:edit, :update, :destroy, :new, :create]

    def index
      @pictures = Picture.all.order(id: :desc).page(params[:page]).per(params[:per_page])
    end

    def edit
      @picture = Picture.find(params[:id])
    end

    def update
      @picture = Picture.find(params[:id])
      @picture.update(picture_params)
      redirect_to admin_pictures_path(page: @page), notice: '更新成功'
    end

    def new
      @picture = Picture.new
    end

    def create
      Picture.create(picture_params)
      redirect_to admin_pictures_path(page: @page), notice: '新建成功'
    end

    def destroy
      @picture = Picture.find(params[:id])
      @picture.destroy
      redirect_to admin_pictures_path(page: @page), notice: '删除成功'
    end

    private

      def set_page
        @page = params[:page].presence || 1
      end

      def picture_params
        params[:picture].permit(:image, :info_id)
      end
  end
end
