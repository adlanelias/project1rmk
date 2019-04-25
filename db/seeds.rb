# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'adlanelias7@gmail.com', :password => 'chicken', :admin => true

Club.destroy_all
Club.create :team_name => 'Arsenal', :team_rank => '', :manager => 'Unai Emery', :schedule => '', :image => ''


Player.destroy_all
Player.create :name => 'Petr Cech', :country => 'Czech Republic', :dob => '20/05/1982', :position => 'Goalkeeper', :number => '1', :nation_image => 'flag CZ', :image => 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p11334.png'
