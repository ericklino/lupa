# This file should contain all the record creation needed to seed the database with its default values.
<<<<<<< HEAD
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.new({
#   :email => "suporte@w3case.com.br",
#   :password => "w3case2022",
#   :password_confirmation => "w3case2022",
#   :admin => true
# }).save
#
# About.create(
#   title: 'Quem somos',
#   content: 'Aqui vai o conteúdo'
# )
Evaluation.create([
  { date_evaluation: nil, status: true, user_id: 1, device_id: 1, created_at: "2017-05-18 14:53:21", updated_at: "2017-05-18 14:53:21", score_usabilidade: 0, score_acessibilidade: 20, quiz_id: 1 },
  { date_evaluation: nil, status: true, user_id: 1, device_id: 1, created_at: "2017-05-18 14:53:21", updated_at: "2017-05-18 14:53:21", score_usabilidade: 0, score_acessibilidade: 20, quiz_id: 1 },
  { date_evaluation: nil, status: true, user_id: 1, device_id: 1, created_at: "2017-05-18 14:53:21", updated_at: "2017-05-18 14:53:21", score_usabilidade: 0, score_acessibilidade: 20, quiz_id: 1 },
  { date_evaluation: nil, status: true, user_id: 1, device_id: 1, created_at: "2017-05-18 14:53:21", updated_at: "2017-05-18 14:53:21", score_usabilidade: 0, score_acessibilidade: 10, quiz_id: 1 },
  { date_evaluation: nil, status: true, user_id: 1, device_id: 1, created_at: "2017-05-18 14:53:21", updated_at: "2017-05-18 14:53:21", score_usabilidade: 0, score_acessibilidade: 10, quiz_id: 1 },
])
=======
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.new({
  email: 'lupa@lupa.com.br',
  password: '12345678',
  password_confirmation: '12345678',
  admin: true
}).save
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
