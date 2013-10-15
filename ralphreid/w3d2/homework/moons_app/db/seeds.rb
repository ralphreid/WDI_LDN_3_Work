# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


m = Moon.create!(name: 'Mimas', orbit: '185000', diameter: '396', mass: '0.4', mother_planet: 'Saturn')
m1 = Moon.create!(name: 'Tethys', orbit: '295000', diameter: '1062', mass: '6.2', mother_planet: 'Saturn')
m2 = Moon.create!(name: 'Rhea', orbit: '527000', diameter: '1527', mass: '23', mother_planet: 'Saturn')
m3 = Moon.create!(name: 'Metis', orbit: '', diameter: '', mass: '', mother_planet: 'Jupiter')
m4 = Moon.create!(name: 'Adrastea', orbit: '', diameter: '', mass: '', mother_planet: 'Jupiter')