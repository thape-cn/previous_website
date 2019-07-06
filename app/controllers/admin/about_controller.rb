module Admin
  class AboutController < Admin::ApplicationController
    before_action :logged_in_user

    def show
      @about = About.first
    end

    def edit
      @about = About.first
    end

    def update
      @about = About.first
      respond_to do |format|
        if @about.update(params[:about].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_about_url }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to admin_about_url }
        end
      end
    end

  end
end
