# This file should contain all the record creation needed to seed the d/b with its default values.
# The data can be loaded with rails db:seed command (or created alongside the d/b with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FactoryBot.create(:user)
FactoryBot.create(:post)