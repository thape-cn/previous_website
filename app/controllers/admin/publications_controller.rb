module Admin
  class PublicationsController < Admin::ApplicationController
    before_action :logged_in_user
    before_action :set_publication, only: [:edit, :update, :destroy]

    def index
      portfolios = Publication.all.order(:position)
      @publications = Publication.page(params[:page]).per(params[:per_page])
    end

    def new
      @publication = Publication.new
    end

    def create
      @publication = Publication.create(publication_params)
      redirect_to admin_publications_path, notice: "#{@publication.title&.truncate(30)}, 创建成功"
    end

    def edit
    end

    def update
      @publication.update(publication_params)
      redirect_to admin_publications_path, notice: "更新成功"
    end

    def destroy
      @publication.destroy
      redirect_to admin_publications_path, notice: "#{@publication.title&.truncate(30)}, 删除成功"
    end

    private

      def set_publication
        @publication = Publication.find(params[:id])
      end

      def publication_params
        params[:publication].permit!
      end
  end
end
