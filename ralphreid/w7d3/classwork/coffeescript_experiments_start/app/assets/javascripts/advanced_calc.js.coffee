# we'll rewrite advanced calc in coffeescript here...

$ ->

  hide = (id) ->
    $(id).hide()

  hideAllAnswers = ->
    hide id for id in ['#basic-answer','#trip-answer','#bmi-answer','#mortgage-answer']

  unhide = (id) ->
    $(id).removeClass('hide') if $(id).hasClass('hide')
    $(id).show()

  getValue = (id) ->
    $(id).val()

  getFloat = (id) ->
    parseFloat(getValue(id))

  roundToTwoDp = (value) ->
    Math.round(value * 100) / 100

  setHTML = (id, html) ->
    $(id).html(html)

  basicCalc = ->
    num1 = getFloat("#basic-num-1")
    num2 = getFloat("#basic-num-2")
    op   = getValue("#basic-operation")

    switch op 
      when '+' then ans = num1 + num2        
      when '-' then ans = num1 - num2        
      when '*' then ans = num1 * num2        
      when '/' then ans = num1 / num2

    setHTML("#basic-answer-alert", num1 + " " + op + " " + num2 + " = " + ans)
    hideAllAnswers()
    unhide("#basic-answer")

  tripCalc = ->
   
    dist  = getFloat("#trip-distance")
    mpg   = getFloat("#trip-mpg")
    cost  = getFloat("#trip-cost")
    speed = getFloat("#trip-speed")

    time = roundToTwoDp(dist / speed)

    if (mpg > 60)
      actualMpg = mpg - (speed - 60) * 2
    else
      actualMpg = mpg

    cost = roundToTwoDp(dist / actualMpg * cost)

    setHTML("#trip-answer-alert", "Your trip will take " + time + " hours and cost $" + cost + ".")
    hideAllAnswers()
    unhide("#trip-answer")

  changeBmiUnits = ->
    


  bmiCalc = ->
    units = getValue("#bmi-units")

    # switch units
    #   # when 'metric'
    #   #   setHTML("#bmi-mass-unit", "kg")
    #   #   setHTML("#bmi-height-unit", "m")
    #   # when 'imperial' then
    #   #   setHTML("#bmi-mass-unit", "lb")
    #   #   setHTML("#bmi-height-unit", "in")
    
    # # hide('bmi-answer')
    
  mortgageCalc = ->
    $("#mortgage-answer-alert").text "need to implement mortgageCalc"
    $("#mortgage-answer").removeClass "hide"

  $("#basic-calc").on     "click",  basicCalc
  $("#trip-calc").on      "click",  tripCalc
  $("#bmi-units").on      "change", changeBmiUnits
  $("#bmi-calc").on       "click",  bmiCalc
  $("#mortgage-calc").on  "click",  mortgageCalc