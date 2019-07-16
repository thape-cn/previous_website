class ManagementController < ApplicationController
  def index
    @people = Person.where(category: 1).page(params[:page]).per(params[:per_page])
  end

  def show
    @person = Person.find_by(id: params[:id]) || Person.find_by!(url_name: params[:id])
  end
end
