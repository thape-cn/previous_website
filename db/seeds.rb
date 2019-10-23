# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

I18n.locale = :en
# id: 1 Shanghai has 6 company, not support
MapContact.create(id: 2, name: "Shenyang", long_name: "Shenyang Tianhua Architectural Design Co., Ltd.",
  address: "20F, Tower B, Zhonghui Plaza, No. 21, Beiling Street, Huanggu District, Shenyang",
  tel: "024-31266856")
MapContact.create(id: 3, name: "Beijing", long_name: "Beijing Tianhua Northern Architectural Design Co., Ltd.",
  address: "5th Floor, Building 2, Fengke Center, No. 2, Auto Museum East Road, Fengtai District, Beijing 100044",
  tel: "18511071631 Mr Guan")
MapContact.create(id: 4, name: "Xi'an", long_name: "Xi'an Tianhua Architectural Design Co., Ltd.",
  address: "8th Floor, Block F, Qujiang Creative Valley, No. 3369, Yanxiang Road, Qujiang New District, Xi'an 710061",
  tel: "029-89601908", fax: "029-89601906")
MapContact.create(id: 5, name: "Chengdu", long_name: "Chengdu Tianhua Southwest Architectural Design Co., Ltd.",
  address: "35th Floor, Aerospace Science and Technology Building, 7 Xinguanghua Street, Jinjiang District, Chengdu 610016",
  tel: "028-65970877", fax: "028-65970866")
MapContact.create(id: 6, name: "Chongqing", long_name: "Chongqing Tianhua Architectural Design Co., Ltd.",
  address: "10F, No. 2, Hualongqiao Business World, Yuzhong District, Chongqing",
  tel: "028-65970877", fax: "023-63638633")
# id: 7 Wuhan has two company, not support
MapContact.create(id: 8, name: "Xiamen", long_name: "Xiamen Tianhua Architectural Design Co., Ltd.",
  address: "Room 803, No. 50, 2nd Anling Road, Huli District, Xiamen",
  tel: "0592-5782220")
MapContact.create(id: 9, name: "Shenzhen", long_name: "Shenzhen Tianhua Architectural Design Co., Ltd.",
  address: "20F, Viatech Building, No. 9966, Shennan Avenue, Nanshan District, Shenzhen",
  tel: "0755-23871888")
MapContact.create(id: 10, name: "Jinan", long_name: "Jinan Tianhua Architectural Design Co., Ltd.")
MapContact.create(id: 11, name: "Tianjin", long_name: "Tianjin Tianhua Northern Architectural Design Co., Ltd.",
  address: "Intersection of the Changjiang Road and the 3rd Nankai Road, Nankai District, Tianjin 16F, Tower B, Nankai Center, Financial Street",
  tel: "022-58956066", fax: "022-58956068")
MapContact.create(id: 12, name: "Qingdao", long_name: "Qingdao Tianhua Yijing Architectural Design Co., Ltd.",
  address: "7F, HNA Wanbang Center, No. 2, Middle Hong Kong Road, Shinan District, Qingdao",
  tel: "0532-83894321")
MapContact.create(id: 13, name: "Nanjing", long_name: "Nanjing Tianhua Jiangnan Architectural Design Co., Ltd.",
  address: "9F, Tower A, Zhonghang Science & Technology Building, No. 218, Middle Longpan Road, Nanjing, Jiangsu",
  tel: "025-83221314")
MapContact.create(id: 14, name: "Hong Kong", long_name: "???",
  address: "???")
MapContact.create(id: 15, name: "Zhengzhou", long_name: "Zhengzhou Tianhua Architectural Design Co., Ltd.",
  address: "North Tower of the Twin Towers, Greenland Central Plaza, Intersection of Dongfeng South Road and Chuangye Road, Zhengdong New District, Zhengzhou",
  tel: "0371-55592880")
MapContact.create(id: 16, name: "Hangzhou", long_name: "Hangzhou Tianhua Architectural Design Co., Ltd.",
  address: "9th Floor, Tower C, Ocean International Center, No. 355 Jinhua South Road, Gongshu District, Hangzhou",
  tel: "0571-56030166")
MapContact.create(id: 17, name: "Guangzhou", long_name: "Guangzhou Tianhua Architectural Design Co., Ltd.",
  address: "31st Floor, Sunrich Plaza, No. 988, Guangzhou Avenue, Tianhe District, Guangzhou")
MapContact.create(id: 18, name: "Hefei", long_name: "Hefei Tianhua Architectural Design Co., Ltd.",
  address: "Room 3906, Block B, China Resources Building, Xiyou Road, Laoshan District, Hefei, Anhui, China",
  tel: "18556508125")

