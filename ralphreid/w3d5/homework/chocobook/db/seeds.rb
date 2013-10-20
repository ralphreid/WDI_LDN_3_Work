# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


recipe3 = Recipe.create(name: 'brownies', url: "http://www.theansweriscake.com/wp-content/uploads/2012/06/Intensely-Chocolatey-Cherry-e1338562912653.jpg", instructions: "ldkjfsladkjflfkjsljflskjdfs;lafjk\nkaljflksjflkjf;alskfdl;kfj;lfskdf\njlkjdsljasd;lkfj;sadfjkdsl;kfjldsfj;lsfjas\nlkajfsdlkjfdsl;jf;lkasjfl;dsfjs;lkfajf;lskf\nalksjflkajsf;ljk;as.")
recipe1 = Recipe.create(name: 'pies', url: "http://whatscookingamerica.net/Desserts/ChocolateBrownie3.jpg", instructions: "ldkjfsladkjflfkjsljflskjdfs;lafjk\nkaljflksjflkjf;alskfdl;kfj;lfskdf\njlkjdsljasd;lkfj;sadfjkdsl;kfjldsfj;lsfjas\nlkajfsdlkjfdsl;jf;lkasjfl;dsfjs;lkfajf;lskf\nalksjflkajsf;ljk;as.")
recipe2 = Recipe.create(name: 'cookies', url: "http://www.festivalchocolate.co.uk/files/2013/02/Warm-chocolate-cake.jpg", instructions: "ldkjfsladkjflfkjsljflskjdfs;lafjk\nkaljflksjflkjf;alskfdl;kfj;lfskdf\njlkjdsljasd;lkfj;sadfjkdsl;kfjldsfj;lsfjas\nlkajfsdlkjfdsl;jf;lkasjfl;dsfjs;lkfajf;lskf\nalksjflkajsf;ljk;as.")
recipe4 = Recipe.create(name: 'brownies', url: "http://www.theansweriscake.com/wp-content/uploads/2012/06/Intensely-Chocolatey-Cherry-e1338562912653.jpg", instructions: "ldkjfsladkjflfkjsljflskjdfs;lafjk\nkaljflksjflkjf;alskfdl;kfj;lfskdf\njlkjdsljasd;lkfj;sadfjkdsl;kfjldsfj;lsfjas\nlkajfsdlkjfdsl;jf;lkasjfl;dsfjs;lkfajf;lskf\nalksjflkajsf;ljk;as.")
recipe5 = Recipe.create(name: 'pies', url: "http://whatscookingamerica.net/Desserts/ChocolateBrownie3.jpg", instructions: "ldkjfsladkjflfkjsljflskjdfs;lafjk\nkaljflksjflkjf;alskfdl;kfj;lfskdf\njlkjdsljasd;lkfj;sadfjkdsl;kfjldsfj;lsfjas\nlkajfsdlkjfdsl;jf;lkasjfl;dsfjs;lkfajf;lskf\nalksjflkajsf;ljk;as.")
recipe6 = Recipe.create(name: 'cookies', url: "http://www.festivalchocolate.co.uk/files/2013/02/Warm-chocolate-cake.jpg", instructions: "ldkjfsladkjflfkjsljflskjdfs;lafjk\nkaljflksjflkjf;alskfdl;kfj;lfskdf\njlkjdsljasd;lkfj;sadfjkdsl;kfjldsfj;lsfjas\nlkajfsdlkjfdsl;jf;lkasjfl;dsfjs;lkfajf;lskf\nalksjflkajsf;ljk;as.")

ingredient1 = Ingredient.create(name: 'Chocolate Chips - small')
ingredient2 = Ingredient.create(name: 'Chocolate Chips-large')
ingredient3 = Ingredient.create(name: 'Chocolate Chips - rich')
ingredient4 = Ingredient.create(name: 'Flour Chips')
ingredient5 = Ingredient.create(name: 'Chocolate Syrup')
ingredient6 = Ingredient.create(name: 'Sugar')
ingredient7 = Ingredient.create(name: 'Butter')
ingredient8 = Ingredient.create(name: 'Eggs')

recipe1.ingredients.push(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8)
recipe2.ingredients.push(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8)
recipe3.ingredients.push(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8)
recipe4.ingredients.push(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8)
recipe5.ingredients.push(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8)
recipe6.ingredients.push(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8)

recipe1.save
recipe2.save
recipe3.save
recipe4.save
recipe5.save
recipe6.save

amount1 = Amount.create(measure: '1', quantity: 'cup') 
amount2 = Amount.create(measure: '1 1/2', quantity: 'cup')
amount3 = Amount.create(measure: '1', quantity: 'cup')
amount4 = Amount.create(measure: '2', quantity: 'oz')
amount5 = Amount.create(measure: '1', quantity: 'cup')
amount6 = Amount.create(measure: '3', quantity: 'kg')
amount7 = Amount.create(measure: '1', quantity: 'cup')

ingredient1.amounts.push(amount1)
ingredient2.amounts.push(amount2)
ingredient3.amounts.push(amount3)
ingredient4.amounts.push(amount4)
ingredient5.amounts.push(amount5)
ingredient6.amounts.push(amount6)
ingredient7.amounts.push(amount7)

ingredient1.save
ingredient2.save
ingredient3.save
ingredient4.save
ingredient5.save
ingredient6.save
ingredient7.save






