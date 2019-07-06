module Admin
  class UsersController < Admin::ApplicationController
    before_action :logged_in_user

    before_action :set_admin_user, only: :destroy

    def index
      @admin_users = User.all
    end


    def new
      @admin_user = User.new
    end


    def create
      @admin_user = User.new(params[:user].permit!)

      respond_to do |format|
        if @admin_user.save
          flash[:success] = "创建成功!"

          format.html { redirect_to admin_users_url }
        else
          format.html { render :new }
        end
      end
    end

    def destroy
      @admin_user.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_users_url }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_admin_user
        @admin_user = User.find(params[:id])
      end
  end
end
