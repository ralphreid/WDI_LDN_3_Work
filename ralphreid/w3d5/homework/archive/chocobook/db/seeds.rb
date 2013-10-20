# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipebook1 = Recipebook.create!(owner: 'Ralph', title: 'First Cookbook')

recipe1 = Recipe.create(name: 'pies')
recipe2 = Recipe.create(name: 'cookies')
recipe3 = Recipe.create(name: 'brownies')

recipebook1.recipes = [recipe1, recipe2, recipe3]
recipebook1.save

image1 = Image.create(target_location: 'main', url: 'http://whatscookingamerica.net/Desserts/ChocolateBrownie3.jpg')
image2 = Image.create(target_location: 'other', url: 'http://www.festivalchocolate.co.uk/files/2013/02/Warm-chocolate-cake.jpg')
image3 = Image.create(target_location: 'main', url: 'http://www.theansweriscake.com/wp-content/uploads/2012/06/Intensely-Chocolatey-Cherry-e1338562912653.jpg')
image4 = Image.create(target_location: 'other', url: 'http://www.gonnawantseconds.com/wp-content/uploads/2013/02/Strawberry-Chocolate-Chip-Cookies-1-1-of-1-1024x703.jpg')
image5 = Image.create(target_location: 'other', url: 'http://www.festivalchocolate.co.uk/files/2013/02/Warm-chocolate-cake.jpg')
image6 = Image.create(target_location: 'main', url: 'http://www.theansweriscake.com/wp-content/uploads/2012/06/Intensely-Chocolatey-Cherry-e1338562912653.jpg')

recipe1.images = [image1, image2]
recipe2.images = [image3, image4]
recipe3.images = [image5, image6]