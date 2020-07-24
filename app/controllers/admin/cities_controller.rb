module Admin
  class CitiesController < Admin::ApplicationController
    before_action :logged_in_user

    before_action :set_admin_user, only: :destroy

    def index
      @cities = City.all
    end

    def new
      @city = City.new
    end

    def create
      @city = City.new(params[:city].permit!)

      respond_to do |format|
        if @city.save
          flash[:success] = "创建成功!"

          format.html { redirect_to admin_cities_path }
        else
          format.html { render :new }
        end
      end
    end
  end
end
