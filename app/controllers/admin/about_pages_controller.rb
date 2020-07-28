module Admin
  class AboutPagesController < Admin::ApplicationController
    before_action :logged_in_user

    def edit
      @about_page = AboutPage.first
    end

    def update
      @about_page = AboutPage.first
      respond_to do |format|
        if @about_page.update(params[:about_page].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to edit_admin_about_page_path }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to edit_admin_about_page_path }
        end
      end
    end
  end
end
