---------------------------
FOR DAVID
---------------------------
- how can I copy text from an app/website and then paste it as string maintining line breaks?
- do I include foriegn key ids? if so, do they get included in the model statements?
- I created an ARCHIVE folder containing an older version; I had problems in the console relating Image instances to a recipe. Can find time in the next week to recreate the issue and help me understand the problem. In the live version, I have simplified the model & db to keep the data model simplier.
- I created the original model useing strings rather than symbols in the the migration. If I want to change to symbols, is this simple or worthwhile?
- How can I create a form which captures the amounts of ingredients for a specific recipe
- How can I incorporate capturing ingredients when a new recipie is created...i think i need to extend the create & new methods
- I would like to to change the text-decoration so that links are not highlighted. The css I have tried does not seem to work and would appreciate a hint.

---------------------------
Psedue Code:
---------------------------
- user creates a new book
- user creates a new recipie by filling in the form
- user copy & pasts recipie instructions into a text field
- line breaks are captured & result is rendered into an ordered list
- recipe is shown
- list of recipies is shown


---------------------------
Backlog:
---------------------------

??should I implement foriegn key constraints
- implement unit coversions
- implement measure conversions
- implement batch import and recipie parsing
- implement re-direct to suitible ingredient substitures based on the receipe
- allow WYSIWG entry of instructions with listing
- enable a form which allows entry of amount of ingredients
- add link to recipe on the ingredient show page
- allow users to relate ingredients to reciepies from the ingredents show view

---------------------------
Specification for CookBook App:
---------------------------

You’ve been tasked with creating a Rails app that models a common cookbook's behaviour. It should allow users to create and look at recipes, as well as see ingredients needed and cooking directions. Your app should have at least a Recipe model with its CRUD actions, and an Ingredient model with its CRUD actions.

Remember: an individual Recipe can have lots of Ingredients, and an Ingredient can be used in lots of Recipes, so you need to determine the database structure that supports this.

Make sure you’re also practicing your newly acquired styling skills, and make your app look pretty!

We’re not doing anything new in this homework - this weekend is all about practice, and repetition, repetition, repetition. We want to see working code on Monday!