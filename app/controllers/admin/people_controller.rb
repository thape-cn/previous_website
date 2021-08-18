module Admin
  class PeopleController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_person, only: [:show, :edit, :update, :destroy, :destory_city_people, :top, :bottom, :up, :down]

    def index
      @people = Person.with_translations('cn').all.order(position: :asc)
      @people = @people.where('person_translations.name LIKE ?', "%#{params[:name]}%") if params[:name].present?
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
          flash[:danger] = @person.errors.full_messages.to_sentence
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @person.update(person_params)
          format.html { redirect_to admin_people_url }
        else
          flash[:danger] = @person.errors.full_messages.to_sentence
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

    def destory_city_people
      city_person = @person.city_people.find_by!(id: params[:city_people_id])
      city_person.destroy
      redirect_to edit_admin_person_path(id: @person.id), notice: '城市职位已经删除！'
    end

    def update_positions
      to_position = params[:to_position].to_i
      people_ids = params[:check_ids]

      rest_of_people_ids = Person.where('position >= ?', to_position).order(position: :asc).pluck(:id)
      rest_of_people_ids.each_with_index do |person_id, index|
        person = Person.find person_id
        person.update(position: person.position + 10000 + index + 1)
      end
      move_people = Person.where(id: people_ids).each_with_index do |person, index|
        person.update(position: to_position + index)
      end
      redirect_to admin_people_path, notice: '移动成功！'
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
      return redirect_to admin_people_url, notice: '已经最高了，你不要逼我！' if up_position < 0

      Person.find_by!(position: up_position).update(position: @person.position)
      @person.update(position: up_position)
      redirect_to admin_people_url, notice: '已经up一位！'
    end

    def down
      down_position = @person.position + 1
      return redirect_to admin_people_url, notice: '我是咸鱼，躺在最底了。。。' if down_position > Person.count - 1

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
