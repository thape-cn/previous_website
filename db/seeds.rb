# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MapContact.create(id: 2, website_url: nil)
MapContact.create(id: 3, website_url: nil)
MapContact.create(id: 4, website_url: nil)
MapContact.create(id: 5, website_url: nil)
MapContact.create(id: 6, website_url: nil)
MapContact.create(id: 8, website_url: nil)
MapContact.create(id: 9, website_url: nil)
MapContact.create(id: 10, website_url: nil)
MapContact.create(id: 11, website_url: nil)
MapContact.create(id: 12, website_url: nil)
MapContact.create(id: 13, website_url: nil)
MapContact.create(id: 14, website_url: nil)
MapContact.create(id: 15, website_url: nil)
MapContact.create(id: 16, website_url: nil)
MapContact.create(id: 17, website_url: nil)
MapContact.create(id: 18, website_url: nil)
MapContact.create(id: 19, website_url: nil)
MapContact.create(id: 20, website_url: nil)

I18n.locale = :en
# id: 1 Shanghai has 6 company, not support
MapContact.find_by(id: 2).translations.create(id: 202, locale: 'en', name: "Shenyang", long_name: "Shenyang Tianhua Architectural Design Co., Ltd.",
  address: "20F, Tower B, Zhonghui Plaza, No. 21, Beiling Street, Huanggu District, Shenyang",
  tel: "024-31266856")
MapContact.find_by(id: 3).translations.create(id: 203, locale: 'en', name: "Beijing", long_name: "Beijing Tianhua Northern Architectural Design Co., Ltd.",
  address: "5th Floor, Building 2, Fengke Center, No. 2, Auto Museum East Road, Fengtai District, Beijing 100044",
  tel: "18511071631 Mr Guan")
MapContact.find_by(id: 4).translations.create(id: 204, locale: 'en', name: "Xi'an", long_name: "Xi'an Tianhua Architectural Design Co., Ltd.",
  address: "8th Floor, Block F, Qujiang Creative Valley, No. 3369, Yanxiang Road, Qujiang New District, Xi'an 710061",
  tel: "029-89601908", fax: "029-89601906")
MapContact.find_by(id: 5).translations.create(id: 205, locale: 'en', name: "Chengdu", long_name: "Chengdu Tianhua Southwest Architectural Design Co., Ltd.",
  address: "35th Floor, Aerospace Science and Technology Building, 7 Xinguanghua Street, Jinjiang District, Chengdu 610016",
  tel: "028-65970877", fax: "028-65970866")
MapContact.find_by(id: 6).translations.create(id: 206, locale: 'en', name: "Chongqing", long_name: "Chongqing Tianhua Architectural Design Co., Ltd.",
  address: "10F, No. 2, Hualongqiao Business World, Yuzhong District, Chongqing",
  tel: "028-65970877", fax: "023-63638633")
# id: 7 Wuhan has two company, not support
MapContact.find_by(id: 8).translations.create(id: 207, locale: 'en', name: "Xiamen", long_name: "Xiamen Tianhua Architectural Design Co., Ltd.",
  address: "Room 803, No. 50, 2nd Anling Road, Huli District, Xiamen",
  tel: "0592-5782220")
MapContact.find_by(id: 9).translations.create(id: 209, locale: 'en', name: "Shenzhen", long_name: "Shenzhen Tianhua Architectural Design Co., Ltd.",
  address: "20F, Viatech Building, No. 9966, Shennan Avenue, Nanshan District, Shenzhen",
  tel: "0755-23871888")
MapContact.find_by(id: 10).translations.create(id: 210, locale: 'en', name: "Jinan", long_name: "Jinan Tianhua Architectural Design Co., Ltd.")
MapContact.find_by(id: 11).translations.create(id: 211, locale: 'en', name: "Tianjin", long_name: "Tianjin Tianhua Northern Architectural Design Co., Ltd.",
  address: "Intersection of the Changjiang Road and the 3rd Nankai Road, Nankai District, Tianjin 16F, Tower B, Nankai Center, Financial Street",
  tel: "022-58956066", fax: "022-58956068")
MapContact.find_by(id: 12).translations.create(id: 212, locale: 'en', name: "Qingdao", long_name: "Qingdao Tianhua Yijing Architectural Design Co., Ltd.",
  address: "7F, HNA Wanbang Center, No. 2, Middle Hong Kong Road, Shinan District, Qingdao",
  tel: "0532-83894321")
MapContact.find_by(id: 13).translations.create(id: 213, locale: 'en', name: "Nanjing", long_name: "Nanjing Tianhua Jiangnan Architectural Design Co., Ltd.",
  address: "9F, Tower A, Zhonghang Science & Technology Building, No. 218, Middle Longpan Road, Nanjing, Jiangsu",
  tel: "025-83221314")
MapContact.find_by(id: 14).translations.create(id: 214, locale: 'en', name: "Hong Kong", long_name: "???",
  address: "???")
MapContact.find_by(id: 15).translations.create(id: 215, locale: 'en', name: "Zhengzhou", long_name: "Zhengzhou Tianhua Architectural Design Co., Ltd.",
  address: "North Tower of the Twin Towers, Greenland Central Plaza, Intersection of Dongfeng South Road and Chuangye Road, Zhengdong New District, Zhengzhou",
  tel: "0371-55592880")
MapContact.find_by(id: 16).translations.create(id: 216, locale: 'en', name: "Hangzhou", long_name: "Hangzhou Tianhua Architectural Design Co., Ltd.",
  address: "9th Floor, Tower C, Ocean International Center, No. 355 Jinhua South Road, Gongshu District, Hangzhou",
  tel: "0571-56030166")
MapContact.find_by(id: 17).translations.create(id: 217, locale: 'en', name: "Guangzhou", long_name: "Guangzhou Tianhua Architectural Design Co., Ltd.",
  address: "31st Floor, Sunrich Plaza, No. 988, Guangzhou Avenue, Tianhe District, Guangzhou")
MapContact.find_by(id: 18).translations.create(id: 218, locale: 'en', name: "Hefei", long_name: "Hefei Tianhua Architectural Design Co., Ltd.",
  address: "Room 3906, Block B, China Resources Building, Xiyou Road, Laoshan District, Hefei, Anhui, China",
  tel: "18556508125")
MapContact.find_by(id: 19).translations.create(id: 219, locale: 'en', name: "Guiyang", long_name: "Guiyang Tianhua Architectural Design Co., Ltd.",
  address: "812, block A, Financial Max, Financial city, Guanshanhu District, Guiyang City",
  tel: "0851-87974158")
MapContact.find_by(id: 20).translations.create(id: 220, locale: 'en', name: "Kunming", long_name: "Kunming Tianhua Architectural Design Co., Ltd.",
  address: "4301, North Tower, Wanda twin tower, Xishan District, Kunming",
  tel: "18206859407  Mr. Ran")


I18n.locale = :cn
# id: 1 Shanghai has 6 company, not support
MapContact.find_by(id: 2).translations.create(id: 302, locale: 'cn', name: "沈阳", long_name: "沈阳天华建筑设计有限公司",
  address: "沈阳市皇姑区北陵大街21号中汇广场B座20楼",
  tel: "024-31266856")
MapContact.find_by(id: 3).translations.create(id: 303, locale: 'cn', name: "北京", long_name: "北京天华北方建筑设计有限公司",
  address: "北京市丰台区汽车博物馆东路2号院丰科中心2号楼五层 100044",
  tel: "18511071631 管先生")
MapContact.find_by(id: 4).translations.create(id: 304, locale: 'cn', name: "西安", long_name: "西安天华建筑设计有限公司",
  address: "西安市曲江新区雁翔路3369号 曲江创意谷F座8层 710061",
  tel: "029-89601908", fax: "029-89601906")
MapContact.find_by(id: 5).translations.create(id: 305, locale: 'cn', name: "成都", long_name: "成都天华西南建筑设计有限公司",
  address: "成都市锦江区新光华街7号 航天科技大厦35楼 610016",
  tel: "028-65970877", fax: "028-65970866")
MapContact.find_by(id: 6).translations.create(id: 306, locale: 'cn', name: "重庆", long_name: "重庆天华建筑设计有限公司",
  address: "重庆市渝中区化龙桥 企业天地2号10层",
  tel: "028-65970877", fax: "023-63638633")
# id: 7 Wuhan has two company, not support
MapContact.find_by(id: 8).translations.create(id: 308, locale: 'cn', name: "厦门", long_name: "厦门天华建筑设计有限公司",
  address: "福建省厦门市湖里区高林中路503-507号 鼎丰财富中心 12楼1203",
  tel: "0592-5782203")
MapContact.find_by(id: 9).translations.create(id: 309, locale: 'cn', name: "深圳", long_name: "深圳市天华建筑设计有限公司",
  address: "深圳市南山区深南大道9966号 威盛科技大厦20楼",
  tel: "0755-23871888")
MapContact.find_by(id: 10).translations.create(id: 310, locale: 'cn', name: "济南", long_name: "济南天华建筑设计有限公司")
MapContact.find_by(id: 11).translations.create(id: 311, locale: 'cn', name: "天津", long_name: "天津天华北方建筑设计有限公司",
  address: "天津市南开区长江道与南开三马路交口金融街南开中心B座16层",
  tel: "022-58956066", fax: "022-58956068")
MapContact.find_by(id: 12).translations.create(id: 312, locale: 'cn', name: "青岛", long_name: "青岛天华易境建筑设计有限公司",
  address: "青岛市市南区香港中路2号海航万邦中心7楼",
  tel: "0532-83894321")
MapContact.find_by(id: 13).translations.create(id: 313, locale: 'cn', name: "南京", long_name: "南京天华江南建筑设计有限公司",
  address: "江苏省南京市秦淮区龙蟠中路218号中航科技大厦A座9F",
  tel: "025-83221314")
MapContact.find_by(id: 14).translations.create(id: 314, locale: 'cn', name: "香港", long_name: "???",
  address: "???")
MapContact.find_by(id: 15).translations.create(id: 315, locale: 'cn', name: "郑州", long_name: "郑州天华建筑设计有限公司",
  address: "郑州市郑东新区东风南路与创业路交汇处绿地中心双子塔北塔",
  tel: "0371-55592880")
MapContact.find_by(id: 16).translations.create(id: 316, locale: 'cn', name: "杭州", long_name: "杭州天华建筑设计有限公司",
  address: "杭州市拱墅区金华南路355号 远洋国际中心C座9层",
  tel: "0571-56030166")
MapContact.find_by(id: 17).translations.create(id: 317, locale: 'cn', name: "广州", long_name: "广州天华建筑设计有限公司",
  address: "广州市天河区广州大道中988号 圣丰广场31楼")
MapContact.find_by(id: 18).translations.create(id: 318, locale: 'cn', name: "合肥", long_name: "合肥天华建筑设计有限公司",
  address: "安徽省合肥市蜀山区习友路华润大厦B座3906室",
  tel: "18556508125")
MapContact.find_by(id: 19).translations.create(id: 319, locale: 'cn', name: "贵阳", long_name: "贵阳天华建筑设计有限公司",
  address: "贵阳市观山湖区金融城金融Max · A座812",
  tel: "0851-87974158")
MapContact.find_by(id: 20).translations.create(id: 320, locale: 'cn', name: "昆明", long_name: "昆明天华建筑设计有限公司",
  address: "昆明市西山区万达双塔北塔4301",
  tel: "18206859407  冉先生")

