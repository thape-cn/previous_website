# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

I18n.locale = :cn
# id: 1 Shanghai has 6 company, not support
MapContact.find_by(id: 2).update(name: "沈阳", long_name: "沈阳天华建筑设计有限公司",
  address: "沈阳市皇姑区北陵大街21号中汇广场B座20楼",
  tel: "024-31266856")
MapContact.find_by(id: 3).update(name: "北京", long_name: "北京天华北方建筑设计有限公司",
  address: "北京市丰台区汽车博物馆东路2号院丰科中心2号楼五层 100044",
  tel: "18511071631 管先生")
MapContact.find_by(id: 4).update(name: "西安", long_name: "西安天华建筑设计有限公司",
  address: "西安市曲江新区雁翔路3369号 曲江创意谷F座8层 710061",
  tel: "029-89601908", fax: "029-89601906")
MapContact.find_by(id: 5).update(name: "成都", long_name: "成都天华西南建筑设计有限公司",
  address: "成都市锦江区新光华街7号 航天科技大厦35楼 610016",
  tel: "028-65970877", fax: "028-65970866")
MapContact.find_by(id: 6).update(name: "重庆", long_name: "重庆天华建筑设计有限公司",
  address: "重庆市渝中区化龙桥 企业天地2号10层",
  tel: "028-65970877", fax: "023-63638633")
# id: 7 Wuhan has two company, not support
MapContact.find_by(id: 8).update(name: "厦门", long_name: "厦门天华建筑设计有限公司",
  address: "福建省厦门市湖里区高林中路503-507号 鼎丰财富中心 12楼1203",
  tel: "0592-5782220")
MapContact.find_by(id: 9).update(name: "深圳", long_name: "深圳市天华建筑设计有限公司",
  address: "深圳市南山区深南大道9966号 威盛科技大厦20楼",
  tel: "0755-23871888")
MapContact.find_by(id: 10).update(name: "济南", long_name: "济南天华建筑设计有限公司")
MapContact.find_by(id: 11).update(name: "天津", long_name: "天津天华北方建筑设计有限公司",
  address: "天津市南开区长江道与南开三马路交口金融街南开中心B座16层",
  tel: "022-58956066", fax: "022-58956068")
MapContact.find_by(id: 12).update(name: "青岛", long_name: "青岛天华易境建筑设计有限公司",
  address: "青岛市市南区香港中路2号海航万邦中心7楼",
  tel: "0532-83894321")
MapContact.find_by(id: 13).update(name: "南京", long_name: "南京天华江南建筑设计有限公司",
  address: "江苏省南京市秦淮区龙蟠中路218号中航科技大厦A座9F",
  tel: "025-83221314")
MapContact.find_by(id: 14).update(name: "香港", long_name: "???",
  address: "???")
MapContact.find_by(id: 15).update(name: "郑州", long_name: "郑州天华建筑设计有限公司",
  address: "郑州市郑东新区东风南路与创业路交汇处绿地中心双子塔北塔",
  tel: "0371-55592880")
MapContact.find_by(id: 16).update(name: "杭州", long_name: "杭州天华建筑设计有限公司",
  address: "杭州市拱墅区金华南路355号 远洋国际中心C座9层",
  tel: "0571-56030166")
MapContact.find_by(id: 17).update(name: "广州", long_name: "广州天华建筑设计有限公司",
  address: "广州市天河区广州大道中988号 圣丰广场31楼")
MapContact.find_by(id: 18).update(name: "合肥", long_name: "合肥天华建筑设计有限公司",
  address: "安徽省合肥市蜀山区习友路华润大厦B座3906室",
  tel: "18556508125")

