module Admin
  class WorksController < Admin::ApplicationController
    before_action :logged_in_user

    before_action :set_work, only: [:show, :edit, :update, :destroy, :top, :bottom, :up, :down, :destory_picture]

    def index
      @works = Work.order(id: :asc).page(params[:page]).per(params[:per_page])
    end

    def show
    end

    def new
      @work = Work.new
    end

    def edit
      @work.work_pictures.build
    end

    def create
      @work = Work.new(params[:work].permit!)
      respond_to do |format|
        if @work.save
          flash[:success] = "创建成功!"
          format.html { redirect_to admin_works_path }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @work.update(params[:work].permit!)
          if params[:work_pictures].present?
            params[:work_pictures]['album_jpg'].each_with_index do |jpg, index|
              webp = if params[:work_pictures]['album_webp'].present?
                params[:work_pictures]['album_webp'][index]
              end
              @work.work_pictures.create!(album_jpg: jpg, album_webp: webp, work_id: @work.id)
            end
          end
          format.html { redirect_to admin_works_path }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @work.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_works_path }
      end
    end

    def top
      @work.update(position: 0)
      Work.where.not(id: @work.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        work = Work.find(id)
        work.update(position: index + 1)
      end
      redirect_to admin_works_path, notice: '置顶成功！'
    end

    def destory_picture
      @work.work_pictures.find(params[:work_picture_id]).destroy
      @div_id_of_picture = "admin-work-pictures-preview-#{@work.id}-#{params[:work_picture_id]}"
    end

    def bottom
      Work.where.not(id: @work.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        work = Work.find(id)
        work.update(position: index)
      end
      @work.update(position: Work.count - 1)
      redirect_to admin_works_path, notice: '置底成功！'
    end

    def up
      up_position = @work.position - 1
      return redirect_to admin_works_path, notice: '已经最高了，你不要逼我！' if up_position < 0

      Work.find_by!(position: up_position).update(position: @work.position)
      @work.update(position: up_position)
      redirect_to admin_works_path, notice: '已经up一位！'
    end

    def down
      down_position = @work.position + 1
      return redirect_to admin_works_path, notice: '我是咸鱼，躺在最底了。。。' if down_position > Work.count - 1

      Work.find_by!(position: down_position).update(position: @work.position)
      @work.update(position: down_position)
      redirect_to admin_works_path, notice: '已经踩了一位！'
    end

    private

      def set_work
        @work = Work.find(params[:id])
      end
  end
end
