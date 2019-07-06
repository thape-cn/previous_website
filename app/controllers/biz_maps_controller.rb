class BizMapsController < ApplicationController
  def index
  end

  def modal
    @contact_id = params[:id].to_i
    case @contact_id
    when 1
      @contact_title = '上海'
      @contact_subtitle = '建筑、规划、室内、景观、资产管理、能源、审图、VR'
    when 2
      @contact_title = '沈阳'
      @contact_subtitle = '建筑'
    when 3
      @contact_title = '北京'
      @contact_subtitle = '建筑、规划'
    when 4
      @contact_title = '西安'
      @contact_subtitle = '建筑'
    when 5
      @contact_title = '成都'
      @contact_subtitle = '建筑'
    when 6
      @contact_title = '重庆'
      @contact_subtitle = '建筑'
    when 7
      @contact_title = '武汉'
      @contact_subtitle = '建筑'
    when 8
      @contact_title = '厦门'
      @contact_subtitle = '建筑'
    when 9
      @contact_title = '深圳'
      @contact_subtitle = '建筑'
    when 11
      @contact_title = '天津'
      @contact_subtitle = '建筑'
    when 12
      @contact_title = '青岛'
      @contact_subtitle = '建筑'
    when 13
      @contact_title = '南京'
      @contact_subtitle = '建筑'
    when 15
      @contact_title = '郑州'
      @contact_subtitle = '建筑'
    when 16
      @contact_title = '杭州'
      @contact_subtitle = '建筑'
    when 17
      @contact_title = '广州'
      @contact_subtitle = '建筑'
    when 18
      @contact_title = '合肥'
      @contact_subtitle = ''
    end
  end
end
