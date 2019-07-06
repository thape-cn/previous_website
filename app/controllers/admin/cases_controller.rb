module Admin
  class CasesController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_case, only: [:show, :edit, :update, :destroy, :destory_picture, :top, :bottom, :up, :down]

    def index
      @cases = Case.order(position: :asc).page(params[:page]).per(params[:per_page])
    end

    def show
    end

    def new
      @case = Case.new
      @case.case_pictures.build
    end

    def edit
      @case.case_pictures.build
    end

    def create
      @case = Case.new(case_params)
      respond_to do |format|
        if @case.save
          flash[:success] = "创建成功!"
          format.html { redirect_to admin_cases_url }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @case.update(case_params)
          if params[:case_pictures].present?
            params[:case_pictures]['album'].each do |a|
              @case.case_pictures.create!(album: a, case_id: @case.id)
            end
          end
          format.html { redirect_to admin_cases_url }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @case.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_cases_url }
      end
    end

    def destory_picture
      @case.case_pictures.find(params[:picture_id]).destroy
      @div_id_of_picture = "admin-image-preview-#{@case.id}-#{params[:picture_id]}"
    end

    def top
      @case.update(position: 0)
      Case.where.not(id: @case.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        case2 = Case.find(id)
        case2.update(position: index + 1)
      end
      redirect_to admin_cases_url, notice: '置顶成功！'
    end

    def bottom
      Case.where.not(id: @case.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        case2 = Case.find(id)
        case2.update(position: index)
      end
      @case.update(position: Case.count - 1)
      redirect_to admin_cases_url, notice: '置底成功！'
    end

    def up
      up_position = @case.position - 1
      return redirect_to admin_cases_url, notice: '已经最高了，你不要逼我！' if up_position <= 0

      Case.find_by!(position: up_position).update(position: @case.position)
      @case.update(position: up_position)
      redirect_to admin_cases_url, notice: '已经up一位！'
    end

    def down
      down_position = @case.position + 1
      return redirect_to admin_cases_url, notice: '我是咸鱼，躺在最底了。。。' if down_position > Case.count - 1

      Case.find_by!(position: down_position).update(position: @case.position)
      @case.update(position: down_position)
      redirect_to admin_cases_url, notice: '已经踩了一位！'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_case
        @case = Case.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def case_params
        params[:case].permit!
      end
  end
end
