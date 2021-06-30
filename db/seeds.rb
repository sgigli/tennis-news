# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dir["db/seeds/articles/*"].each do |article|
  load article
end
# load "db/seeds/articles.rb"
# load "db/seeds/players.rb"
# load "db/seeds/tournaments.rb"
# load "db/seeds/singles_matches.rb"
# load "db/seeds/s3_uploads.rb"