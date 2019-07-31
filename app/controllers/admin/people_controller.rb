module Admin
  class PeopleController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_person, only: [:show, :edit, :update, :destroy]

    def index
      @people = Person.with_translations('cn').all
      @people = @people.where('person_translations.name LIKE ?', "%#{params[:name]}%") if params[:name].present?
      @people = @people.page(params[:page]).per(params[:per_page])
    end

    def show
    end

    def new
      @person = Person.new
    end

    def edit
    end

    def create
      @person = Person.new(person_params)

      respond_to do |format|
        if @person.save
          flash[:success] = "创建成功!"
          format.html { redirect_to admin_people_url }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @person.update(person_params)
          format.html { redirect_to admin_people_url }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @person.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_people_url }
      end
    end

    def top
    end

    def bottom
    end
    
    def up
    end

    def down
    end
    
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_person
        @person = Person.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def person_params
        params[:person].permit!
      end
  end
end
