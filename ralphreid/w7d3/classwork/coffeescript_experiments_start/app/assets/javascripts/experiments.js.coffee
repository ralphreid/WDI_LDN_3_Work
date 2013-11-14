# Our first play with CoffeeScript... EXCITING!

# NOTE: these comments use # rather than JS-style //


###
we can do block comments too
this is much nicer than JS equivalent
###

###
let's create a drawHeader function to make our console output pretty...
here's the old JS code...

  function drawHeader(name) {
    console.info("\n************** " + name + " **************\n")
  }

###

drawHeader = (name) ->
  console.log "\n************** #{name} **************\n"

### 
  concise function notation with ->
  lack of parenthesis on call to console.info
  ruby-style string interpolation
###

# let's make a super concise log funtion while we're at it

log = (first, others...) ->
  console.log first, others...


###
Now let's use jQuery's document ready method
The vanilla JS (functional) form is:

$(function() {
  // your code here
});

The coffeescript equivalent is:
  
  $ ->
    # YOUR CODE HERE

###

$ ->

###########################
  drawHeader 'variables'

  # basic assingment

  x = 99
  window.y = 100

  # variable safety

  y += 1

  log "try looking for x in the chrome counsole....you won't find it"
  log "now look for y... NOTE: its been increatmented by 1"

  # 'this' keyword

  this.foo = 'bar'
  @whizz = 'bang'

  log '@foo and @whiz are #{@foo} and #{@whizz}'

  ###########################
  drawHeader 'numbers'

  log 'there is nothing special about numbers'

  myInt = 42
  myFloat = 99.99

  ###########################
  drawHeader 'strings'

  # simple

  myString = "Hello foo"
  myOtherString = 'hello bar'

  # interpolation

  name = 'Jon'
  log 'hello #{name}'
  log "hello #{name}"

  multilineString = "I started writing this on one line
 but finished on another"

  blockStr1 = """
              \nthis is a double-qouted block string,
              according to #{name} these:

                - preserve white space
                - do string interpolation
              """

  blockStr2 = '''
              \nthis is a double-qouted block string,
              according to #{name} these:

                - preserve white space
                - BUT DO NOT DO string interpolation
              '''

  log multilineString
  log blockStr1
  log blockStr2

  ###########################
  drawHeader 'arrays'

  # literal syntax

  arr = [1, 2, 3, 4, 5, 6]
  log "arr is #{arr}"

  # slicing

  log "arr[0..4] is #{arr[0..4]} "
  log "arr[0...4] is #{arr[0...4]} "

  # splice

  arr[2..3] = ["foo", "bar"]
  log "arr is now #{arr}"

  ###########################
  drawHeader 'objects'

  obj1 = {a: 1, b: 2}
  obj2 = a: 1, b: 2
  obj3 = 
    a: 1
    b: 2

  log obj1
  log obj2
  log obj3

  ###########################
  drawHeader 'functions'

  # implicit returns

  sum = (num1, num2) ->
    num1 + num2

  log "sum(2,2) returns #{sum(2,2)}"

  args = ['foo', 'bar', 'baz']

  splatDemo = (firstArg, otheArgs...) ->
    log firstArg
    log otheArgs

  splatDemo args...
  # splatDemo args[0], args[1], args[2]

  # fat arrow

  @page = "experiments"
  $('body').on 'dblclick', =>
    alert "#{this} welcome from the #{@page} page (this message is brought to you by the FAT arrow)"
  $('body').on 'dblclick', ->
    alert "#{this}   @page (i.e. this.page) is #{@page}"

  compiledCode = '''
    var _this = this;

    $('body').on('dblclick', function() {
        return alert("welcome from the " + _this.page + " page (this message is brought to you by the FAT arrow)");
      });
      return $('body').on('dblclick', function() {
        return alert("@page (i.e. this.page) is " + this.page);
      });
    '''

  log "fat and thin arrow compiled JS is: ", compiledCode

  ###########################
  drawHeader 'operators and aliases'

  # forget about == and ===

  log "true is true: #{true is true}"
  log "true isnt true: #{true isnt true}"
  log "not true: #{not true}"

  # Ruby some_var.nil? JS equivalent is existential operator

  arr = [true, 100, 0, false, "", NaN, null, undefined]

  isTrue = _(arr).map (el) -> !!el
  isNil = _(arr).map (el) -> el?

  log isTrue, isNil

  someVal = 0

  unless someVal
    log "I'm printing this because 0 is falsy in JS"

  if someVal?
    log "I'm printing this because 0 is a value -duh!"

  # assign if missing

  someVal ?=100  #if somval had not be set, assing it value of 100

  log "after running 'someVal ?100' someVal is still #{someVal} as it had a value"

  newVal = undefined
  newVal ?= 100

  log "after running 'newVal ?= 100' newVal is #{newVal} as it was previously undefined"

  # we only need to set newVal because it wans't on an object proof below

  obj = {}
  obj.newVal ?= 100
  log obj


  ###########################
  drawHeader 'conditionals'

  if true
    log "we have if"
  else
    log "this will never be printed"

  unless false
    log "weh have unless"

  log "we have inline if" if true

  log "we have inline unless" unless false

  # ternary replacement

  if true then log('it was true') else log('this will never be run')

  # and == && , or == ||

  if true and true
    log "true and true is true, and nevera  truer workd was said"

  # switch statement

  day = 'wed'
  tooMuchCoffeeDuringWeek = true
  hoursSleep = switch day
    when 'Mon' then 4
    when 'Tue' then 3
    when 'wed' then 2
    when 'fri', 'sat'
      if tooMuchCoffeeDuringWeek
        5
      else
        7
    when 'sun' then 0
    else "#{day} is not a recognised day"

  ###
  NOTE:
    - "when" not case "case"
    - no break required
    - inline then or indented block
    - multiple values per when
  ###

  log "Jon has has #{hoursSleep} hours of sleep"
  log "this is a cry for help" 

  ###########################
  drawHeader 'loops'

  # comprehensions

  inst = ['gerry', 'jon', 'julien', 'david']
  sortedInstructors = _(inst).sortBy (el) ->  el
    
  log sortedInstructors

  log "my alphabetically sorted instructors are: "
  log(instructor) for instructor in sortedInstructors 

  log "my instructors and their index in sortedInstructors: "
  log "#{i}: #{instructor}" for instructor, i in sortedInstructors

  for key, val of {a:1 , b:2, c:3}
      log "#{key} => #{val}" 
  # same as above...you can 
  log "#{key} => #{val}" for key, val of {a:1 , b:2, c:3}

  ###
    NOTE: an important difference when stepping through arrays vs objects
    "in" for arrays
    "of" for objects
  ###

  #while

  counter = 10

  while counter < 15
    log counter +=1

  log counter -= 1 until counter < 1
  # log counter += while counter < 11
      
  ###########################
  drawHeader 'classes and inheritance'

  class Person

    constructor: (@fname, @lname, @gender, @title, options={}) ->
      @title ?= switch @gender
        when 'male' then 'Mr'
        when 'female' then 'Mrs'
        else null
      log "contruction #{@name()}" if options.verbose

    name: =>
      if @title
        "#{@title} #{@fname} #{@lname}"
      else
        "#{@fname} #{@lname}"

    describe: =>
      log "#{@name()} is a Person"

    getsEnoughSleep: =>
      "probably"

  window.alice = new Person "Alice", 'Foo', "female"
  log alice
  alice.describe()

  class Developer extends Person

    getsEnoughSleep: =>
      "no"

    describe: =>
      super
      log "#{@name()} is also a Developer"

  gerry = new Developer 'Gerry', 'Mathe', 'male'
  jon = new Developer 'Gerry', 'Mathe', 'male', 'Dr',
    verbose: true, foo:99


  log gerry, jon
  gerry.describe()
  jon.describe()

  log "jon.getsEnoughSleep?: #{jon.getsEnoughSleep()}"























  #######################################################
  drawHeader "you owe Jeremy Ashkenas a beer"

  jeremyAshkenas = """
    ###################################################################
    ################################+##################################
    ###########################,    .     ``+##########################
    #################''####;    `  `;,,.`    ``.#######################
    #################+'##    `'#+;##;##''#+#,...  ;##########+'########
    ###################    +#####++;+'+;#####;;#.   '#;######''########
    #################   ,#########;'#';###########;  `##########'######
    #########'#####+  `######;;:''++##+''::++#######;  `###############
    ##############`  +############;++;'+########;+####`  ##############
    ####;########`  #############+;#'#':############+++' `;############
    ####;####### `:#############:+##;###,####;;########+'  '###########
    ##'######## `,####'########;####;####+'##++#####;##++;` '##'####;##
    #########,` ',##;:##############;################+'++''  ;+########
    ######### ,:+:+,+###############:##################;''''; #########
    ########. ,::+#:################+''''''+'+#########'';;';  ########
    #####+#.,,,####+,,,,.##########++++''''+++++##,+,;;:++#+:;,,#:#####
    #######  ##,;+;:##############+++'+'+++''++#+######';;;;'#` #######
    ######. '#,;:;::;###########+#'+'+'''+''+####+#####;';';;##  ######
    ######  +;###,##:+#########+++++++'':'+#++++##+##+;##'+##;#; :#####
    #####` #####+,#############++++###'::,::'++#++++#####''#####  #####
    ##### `++###+.####+########++####';:,,,,:,,,::'#+####''####+' ;####
    ###'. #######:###################';:::::,.,,,::######++######  #;##
    ####` ####################+#####+';;::::,``,,,:'#############, ####
    ###.``+###################+#####++;;;;::,.`.,,:;#############+,`###
    ###.`+###############::###+######+';::::,.`.,::;##############, ###
    ###  #################,#########++';;';:,...,,,;##############, ###
    ### .###;###########+;:###,,####''''''#+':,,,,:;##########'#### ;##
    ### '###'###########+,,##+##'##+''+'++##+;:::'+'##########+#### `##
    ##:`####,####''#####++:##'''###';;:;'''##+::##+;####+.####;####  ##
    ##  `+##,###,#######+',##+:###'':::,:;:,;',;:++'######.+##;###;` ##
    ##  #;,#,#;,+########;,#+#,++##+;;::,..,:;:,;:;########+;#;#;'+. ##
    ##  #+;;;,;;#########;,+##+:##+#+'::,.`,:::,,::########+''+;'+#, ##
    #+``;;;;#+;;;;;++####;,'+##'##+##';::,.,;;:,,,:####++++'''##''+;.#'
    ##  ##,;+;,########+#;,.;'#..'+##+';:::;:':.,,:#########;;++;##; ##
    ##  #;+,+,+;#+#######':,#''.,;#+++';:::+##':,,;########++;+,#;#: ##
    ##  #,+#,#+;'###+####',++#..,+##+'';;;:;:#+:::+########;+#;#+'', ##
    ##  ;###,+##;###++###;'#''..;+##+'':;'';:,;::'########'###;###+` ##
    ##``####,+#+#++######'##:..,'+###''::###++;;:########,####;####  ##
    ##; ####+#+###+#+######',,,:;####+'::;::+##;;########++###+####  ##
    ### '#+#######+#+#+###',..,';####+':::':,:::##############+#### `##
    ### `+##+##+#######+##;,..,:+#####+;::,::::;##########+#'#+###+ +##
    ###  #+##+##+######+##:,..,:+####+#';:,.,,:+###+##########'+##, ###
    ###, +######+#++;##+##:,..,.''####+++';,::;###+#############+'..###
    ###'`,##+#####+#+#####:,,....''#####++';;;############++;##### .###
    ####` +##++#+,##+#+##+::,:,,.,;'##+######;#########+#'+######. ####
    ####, ++###++,++##'##+;::.,..`::#+######+;###########++####+#  ####
    ##'##  ++++++;+++,;###';`.....,,,++######';#####;####++####'; +####
    #####, ++,#+,,`.,,'+#+'.`.`..,##;;+#+#'#;#+#++###+:##++##:+#  #####
    ######` +#:,,,,,.+;'';:,````,##;';;+#:;;;#+``+#####:+''':+#. +#####
    ######; ,,.,,.,,:+;;:,,````.#+++++,,.,;'#;#,.````,'''::''##  ######
    #####++,:,,,.``,:::,,,`.`.,.,'#++''....;+##+```.::,,;+#+:::,#:#####
    ########  ,,,..:+;;:,,`..,,,...+#++;'..;,,#;``.....`,:''+. ,#######
    ########; :+:,,;';;,,,..,,+..,..;+++'..;..,#'```...,.,:':  ########
    #########.`.#,;+;;:,,,..,,+;..,..,##;`.;..,#+.``..,`.`.` ,#########
    ##########  `:'+';:,,....,.#......,';..,.,,,.,.`....```  ##########
    ###########  ,++';:,,..,....;,..,..,'`.,.,..',.,,.....` ###########
    ############```';;:,,,......,...,...;.......+..,....`  ############
    #############` `;:,,:.......+,..:..,+.......#..:...   #############
    ##############;  .,,;.......,+.,.,.`+.......+.,,.`  `##############
    ################   ,,;.......+,,..,,;`......:;,.   ;########+######
    #######;;########, ` ',.......:,.,:',......`.#`   ########:,,;#####
    ##################;``  .......':`,';'..`....    ##''#######++######
    ##########;########;#,    `..,,,:.:;+.```    `####;################
    ########################`   `   `   `     `,``#####################
    ###########################,,`  ,    `.'###########################
    ###################################################################
    ################################,##################################
  """

  log jeremyAshkenas



