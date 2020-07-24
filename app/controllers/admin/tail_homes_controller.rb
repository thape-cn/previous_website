module Admin
  class TailHomesController < Admin::ApplicationController
    before_action :logged_in_user

    def edit
      @home = TailHome.first
    end

    def update
      @home = TailHome.first
      respond_to do |format|
        if @home.update(params[:tail_home].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to edit_admin_tail_home_path }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to edit_admin_tail_home_path }
        end
      end
    end
  end
end
