# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Actor.create!(first_name: 'Jon', last_name: 'Jane', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
Actor.create!(first_name: 'BILY', last_name: 'Jane', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
Actor.create!(first_name: 'ANDREW', last_name: 'Jones', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
Actor.create!(first_name: 'Will', last_name: 'Smith', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
Actor.create!(first_name: 'Harry', last_name: 'Smith', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')

Movie.create(title: 'Candyland', rated: '4', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
Movie.create(title: 'Harder they come', rated: '4', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
Movie.create(title: 'Foo', rated: '4', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
Movie.create(title: 'THOR', rated: '4', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg/540px-Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
