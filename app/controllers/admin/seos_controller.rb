module Admin
  class SeosController < Admin::ApplicationController
    before_action :logged_in_user
    def show
    end

    def edit
    end

    def update
      respond_to do |format|
        if @seo.update(params[:seo].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_seo_url }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to admin_seo_url }
        end
      end
    end
  end
end
