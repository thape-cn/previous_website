class BizMapsController < ApplicationController
  def index
    @contact2 = MapContact.find 2
    @contact3 = MapContact.find 3
    @contact4 = MapContact.find 4
    @contact5 = MapContact.find 5
    @contact6 = MapContact.find 6
    @contact8 = MapContact.find 8
    @contact9 = MapContact.find 9
    @contact10 = MapContact.find 10
    @contact11 = MapContact.find 11
    @contact12 = MapContact.find 12
    @contact13 = MapContact.find 13
    @contact14 = MapContact.find 14
    @contact15 = MapContact.find 15
    @contact16 = MapContact.find 16
    @contact17 = MapContact.find 17
    @contact18 = MapContact.find 18
    @contact19 = MapContact.find 19
    @contact20 = MapContact.find 20
    @contact21 = MapContact.find 21
    @contact22 = MapContact.find 22
  end

  def modal
    @contact_id = params[:id].to_i
    @contact = MapContact.find params[:id] unless @contact_id.in?([1,7])
    case @contact_id
    when 1
      @contact_title = '上海'
      @contact_subtitle = '建筑、规划、室内、景观、资产管理、能源、审图、VR'
    when 3
      @contact_title = @contact.name
      @contact_subtitle = '建筑、规划'
    when 2,4,5,6,8,9,11,12,13,15,16,17,19,20,21,22
      @contact_title = @contact.name
      @contact_subtitle = '建筑'
    when 7
      @contact_title = '武汉'
      @contact_subtitle = '建筑'
    when 18
      @contact_title = @contact.name
      @contact_subtitle = ''
    end
  end
end
