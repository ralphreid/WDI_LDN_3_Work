function drawHeader(name) {
  console.info("\n**************** " + name + " ****************\n")
}

/////////////////////////////////////////////////////////////////////
drawHeader("the jQuery object");

// jQuery adds two variables to the global scope

console.log('jQuery is a ' + typeof jQuery);
console.log('$ is a ' + typeof $);
console.log("jQuery and $ are the same object? " + (jQuery === $));

/////////////////////////////////////////////////////////////////////
drawHeader("document ready");

function onloadFunc1() {
  console.log("\nthe 1st onload func was triggered")
}

function onloadFunc2() {
  console.log("the 2nd onload func was triggered")
}

function onloadFuncWrapper() {
  onloadFunc1();
  onloadFunc2();
}

function docReadyFunc1(){
  console.log('the 1st doc ready func was triggered')
}

function docReadyFunc2(){
  console.log('the 2nd doc ready func was triggered')
}

// vanilla js way of waiting for doc to load
// this waits for EVERYTHING to load (e.g. big images)
// we can only call one function
window.onload = onloadFuncWrapper();

// the jQuery way
// this only waits for the document's structure to load
// and lets us chain calls together (like method chaining in ruby)
$('document')
  .ready(docReadyFunc1)
  .ready(docReadyFunc2)
  .ready(runExperiments);

function runExperiments() {
  /////////////////////////////////////////////////////////////////////
  drawHeader("geting page content");

  // the vanilla js DOM API lets us grab elements by tag type
  // we get an array of plain DOM element objects
  paras = document.getElementsByTagName('p');
  paras[0];
  paras[1];


  // jQuery lets us do this more concisely
  // AND it wraps the elements in a jQuery object
  $paras = $('p');
  $paras[0];
  $paras[1];

  $images = $('img');

  // basically we can use any CSS selectors in the $()

  // simple id lookup
  $planetList = $('#planet-list');

  // heirachiacal css selectors are okay too
  // the same thing in vanilla js would require loops
  $gasGiantListItems = $('li.gas-giant');
  $contentHeadings = $('#content > h1');

  // we can also use jQuery helpers
  $planetListItems = $planetList.children();

  // we can get the RAW DOM element from a set like this 
  firstPlanet = $planetListItems[0]; // plain DOM element returned
  $planetListItems.first();
  $planetListItems.last();

  // if we need to re-wrap a RAW DOM element, we do it like this
  $firstPlanet = $(firstPlanet);

  // we can easily get info about elements using jQuery...
  // NOTE: sometimes jQuery assumes you mean the FIRST element in the set..
  height = $images.height();
  console.log('the height of the FIRST image is : ' + height);

  color = $gasGiantListItems.css('color');
  console.log('the color of the FIRST planet list item is: ' + color);

  console.log("the text of the First Planet li is: " + $firstPlanet.text());


  /////////////////////////////////////////////////////////////////////
  drawHeader("manipulating page content");

  // we can easily style element sets
  $gasGiantListItems
    .css('color', 'red')
    .css('font-weight', 'bold');

  // we can also loop through sets
  // useful if we need to do different things to each element
  function addPlanetClass(index) {
    //console.log(index, this);
    //console.log(index, $(this).text());
    $(this).addClass('planet-' + (index + 1))
  }
  $planetListItems.each(addPlanetClass);

  $('.planet-4').html('Mars - has rovers: <ul><li>Spiit</li> </ul>');
  $('.planet-3').text('Earth - home, sweet home');
  $('.planet-9').append(" (not classed as a planet anymore) ");


  /////////////////////////////////////////////////////////////////////
  drawHeader("events");

  function displayImageSrc() {
    console.log('src is: ' + $(this).attr('src'))
  }

  $images.on('click', displayImageSrc);

  /////////////////////////////////////////////////////////////////////
  drawHeader("animation");


  function makeImageBig() {
    $(this).animate(
      {height: '600px'},
      5000,
      function(){console.log('just resized an image')}
      )
  }

  $images.on('dblclick', makeImageBig);

}























































































