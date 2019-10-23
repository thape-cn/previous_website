[![CircleCI](https://circleci.com/gh/thape-cn/website.svg?style=svg)](https://circleci.com/gh/thape-cn/website)

# [The THAPE official web](https://www.thape.com)

## Steps to build the local dev.

### Generate dummy settings

```
bundle install
yarn install
rails credentials:edit
```

and paster below content:

```yml
aliyun:
  access_key_id: a
  secret_access_key: b

secret_key_base: c
wechat_appid: d
wechat_secret: e
wechat_token: f
wechat_encoding_aes_key: g
```

### Migrate DB and initial DB

```yml
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rails c
irb(main):001:0> Home.create
Seo.create
ServiceFile.create
About.create
```

You can also leave a message to ask the Web DB if required.
