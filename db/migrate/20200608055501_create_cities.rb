class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :china_area_name

      t.timestamps
    end
    City.create(name: '上海', china_area_name: '华东')
    City.create(name: '杭州', china_area_name: '华东')
    City.create(name: '南京', china_area_name: '华东')
    City.create(name: '合肥', china_area_name: '华东')
    City.create(name: '济南', china_area_name: '华东')
    City.create(name: '青岛', china_area_name: '华东')
    City.create(name: '北京', china_area_name: '华北')
    City.create(name: '天津', china_area_name: '华北')
    City.create(name: '太原', china_area_name: '华北')
    City.create(name: '深圳', china_area_name: '华南')
    City.create(name: '厦门', china_area_name: '华南')
    City.create(name: '广州', china_area_name: '华南')
    City.create(name: '沈阳', china_area_name: '东北')
    City.create(name: '武汉', china_area_name: '华中')
    City.create(name: '郑州', china_area_name: '华中')
    City.create(name: '长沙', china_area_name: '华中')
    City.create(name: '西安', china_area_name: '西北')
    City.create(name: '重庆', china_area_name: '西南')
    City.create(name: '成都', china_area_name: '西南')
    City.create(name: '贵阳', china_area_name: '西南')
    City.create(name: '昆明', china_area_name: '西南')
  end
end
