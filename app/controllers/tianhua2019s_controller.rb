class Tianhua2019sController < ApplicationController
  layout "tianhua2019"

  def show
    @tianhua2019 = Tianhua2019.find_by!(clerkcode: params[:id])
  end

  def index
    redirect_to tianhua2019_path(id: '017081')
  end
end
