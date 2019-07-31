module Admin
  class PeopleController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_person, only: [:show, :edit, :update, :destroy, :top, :bottom, :up, :down]

    def index
      @people = Person.with_translations('cn').all.order(position: :asc)
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
      @person.update(position: 0)
      Person.where.not(id: @person.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        person = Person.find(id)
        person.update(position: index + 1)
      end
      redirect_to admin_people_url, notice: '置顶成功！'
    end

    def bottom
      Person.where.not(id: @person.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        person = Person.find(id)
        person.update(position: index)
      end
      @person.update(position: Person.count - 1)
      redirect_to admin_people_url, notice: '置底成功！'
    end
    
    def up
      up_position = @person.position - 1
      return redirect_to admin_people_url, notice: '已经最高了，你不要逼我！' if up_position <= 0

      Person.find_by!(position: up_position).update(position: @person.position)
      @person.update(position: up_position)
      redirect_to admin_people_url, notice: '已经up一位！'
    end

    def down
      down_position = @person.position + 1
      return redirect_to admin_people_url, notice: '我是咸鱼，躺在最底了。。。' if down_position > Info.count - 1

      Person.find_by!(position: down_position).update(position: @person.position)
      @person.update(position: down_position)
      redirect_to admin_people_url, notice: '已经踩了一位！'
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
