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
      @page = params[:page].presence || 1
      @picture = Picture.find(params[:id])
      @picture.update(picture_params)
      redirect_to admin_pictures_path(page: @page), notice: '更新成功'
    end

    def destroy
      @page = params[:page].presence || 1
      @picture = Picture.find(params[:id])
      @picture.destroy
      redirect_to admin_pictures_path(page: @page), notice: '删除成功'
    end

    private

      def picture_params
        params[:picture].permit(:image, :info_id)
      end
  end
end
