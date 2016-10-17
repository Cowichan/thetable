# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Actualite.destroy_all

Actualite.create!(name: "1er new", tagline: "bdjezjze debhjz echb")
Actualite.create!(name: "2er new", tagline: "2bdjezjze debhjz echb")
Actualite.create!(name: "3er new", tagline: "3bdjezjze debhjz echb")

