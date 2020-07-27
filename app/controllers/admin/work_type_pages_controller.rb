module Admin
  class WorkTypePagesController < Admin::ApplicationController
    before_action :logged_in_user

    def edit
      @work_type_page = WorkTypePage.first
    end

    def update
      @work_type_page = WorkTypePage.first
      respond_to do |format|
        if @work_type_page.update(params[:work_type_page].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to edit_admin_work_type_page_path }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to edit_admin_work_type_page_path }
        end
      end
    end
  end
end
