module Admin
  class MapContactsController < Admin::ApplicationController
    before_action :logged_in_user
    def index
      @map_contacts = MapContact.all
    end

    def edit
      @map_contact = MapContact.find(params[:id])
    end

    def update
      @map_contact = MapContact.find(params[:id])
      respond_to do |format|
        if @map_contact.update(params[:map_contact].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_map_contacts_path }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to admin_map_contacts_path }
        end
      end
    end
  end
end
