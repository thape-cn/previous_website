module Admin
  class ServiceFilesController < Admin::ApplicationController
    before_action :logged_in_user

    def show
      @service_file = ServiceFile.first
    end

    def edit
      @service_file = ServiceFile.first
    end

    def update
      @service_file = ServiceFile.first
      respond_to do |format|
        if @service_file.update(params[:service_file].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_service_file_path(@service_file) }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to admin_service_file_path(@service_file) }
        end
      end
    end
  end
end
