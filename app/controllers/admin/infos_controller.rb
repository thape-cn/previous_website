module Admin
  class InfosController < Admin::ApplicationController
    before_action :logged_in_user

    before_action :set_info, only: [:show, :edit, :update, :destroy, :top, :bottom, :up, :down]

    # after_action :save_alt

    def index
      @infos = Info.order(position: :asc)
    end

    def show
    end

    def new
      @info = Info.new
    end

    def edit
    end

    def create
      @info = Info.new(params[:info].permit!)
      respond_to do |format|
        if @info.save
           @info.snapshot_alt = @info.title
           @info.banner_alt = @info.title
           @info.save
          flash[:success] = "创建成功!"
          format.html { redirect_to admin_infos_url }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @info.update(params[:info].permit!)
          @info.content_convert_to_jpeg
          @info.content_convert_to_gif
          @info.save
          flash[:success] = "保存成功!"
          format.html { redirect_to edit_admin_info_path }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @info.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_infos_url }
      end
    end

    def top
      @info.update(position: 0)
      Info.where.not(id: @info.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        info = Info.find(id)
        info.update(position: index + 1)
      end
      redirect_to admin_infos_url, notice: '置顶成功！'
    end

    def bottom
      Info.where.not(id: @info.id).order(position: :asc).pluck(:id).each_with_index do |id, index|
        info = Info.find(id)
        info.update(position: index)
      end
      @info.update(position: Info.count - 1)
      redirect_to admin_infos_url, notice: '置底成功！'
    end

    def up
      up_position = @info.position - 1
      return redirect_to admin_infos_url, notice: '已经最高了，你不要逼我！' if up_position < 0

      Info.find_by!(position: up_position).update(position: @info.position)
      @info.update(position: up_position)
      redirect_to admin_infos_url, notice: '已经up一位！'
    end

    def down
      down_position = @info.position + 1
      return redirect_to admin_infos_url, notice: '我是咸鱼，躺在最底了。。。' if down_position > Info.count - 1

      Info.find_by!(position: down_position).update(position: @info.position)
      @info.update(position: down_position)
      redirect_to admin_infos_url, notice: '已经踩了一位！'
    end

    def upload
      @picture = Picture.new
      @picture.image = params[:upload_file]

      success = true
      msg = '上传成功'
      file_path = ''
      if @picture.save!
          success=true
        render json: { :success=> success, :msg=>msg, :file_path=> @picture.image.url }
      else
          success=false
        render json: { :success=> false }
      end
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_info
        @info = Info.find(params[:id])
      end

      # def save_alt
      #   @info.snapshot_alt = info.title
      # end
  end
end
