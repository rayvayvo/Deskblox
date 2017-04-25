# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "desk@blox.com",
  theme_id: 1,
  password_digest: ""
)

Widget.create(
  data_url: "",
  data_source: 'time',
  name: "datetime"
)

Widget.create(
  data_url: "http://dataservice.accuweather.com/forecasts/v1/daily/1day/55488?apikey=%20%09tVhULZkgATwDv7y6vlJaYjtbqy8FVepU%20",
  data_source: 'accuweather',
  name: "weather"
)

Widget.create(
  data_url: "",
  data_source: 'local',
  name: "loca_news"
)

Widget.create(
  data_url: "",
  data_source: 'topstory',
  name: "world_news"
)


Setting.create(
  user_id: 1,
  widget1_id: 2,
  widget2_id: 1,
  widget3_id: 3,
  widget4_id: 4,
  widget5_id: nil,
  widget6_id: nil,
  layout_id: 1
)