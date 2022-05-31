# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all # explain thoroughly

# used new instead of create ouch !

require 'faker'

10.times do
  article = Article.new(
    title: Faker::Movies::HarryPotter.spell,
    content: Faker::Quote.famous_last_words
  )
  article.save!
end

# 'end of the seed' the rake worked but couldn't see the text
