module Admin
  class SeosController < Admin::ApplicationController
    before_action :logged_in_user
    def index
      @seos = Seo.all
    end

    def update
      seo = Seo.find params[:id]
      respond_to do |format|
        if seo.update(params[:seo].permit!)
          flash[:success] = "#{seo.seo_name}更新成功!"
          format.html { redirect_to admin_seos_path }
        else
          flash[:danger] = "#{seo.seo_name}更新失败!"
          format.html { redirect_to admin_seos_path }
        end
      end
    end
  end
end
