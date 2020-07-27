module Admin
  class CitiesController < Admin::ApplicationController
    before_action :logged_in_user

    before_action :set_city, only: [:edit, :update]

    def index
      @cities = City.all
    end

    def new
      @city = City.new
    end

    def edit
    end

    def update
      if @city.update(params[:city].permit!)
        redirect_to admin_cities_path
      else
        render :edit
      end
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

    private

      def set_city
        @city = City.find(params[:id])
      end
  end
end
