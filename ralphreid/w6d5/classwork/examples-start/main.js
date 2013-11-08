// functions we'll use for this lesson

function drawHeader(name) {
  console.info("\n************** " + name + " **************\n")
}

function appendHtml(html) {
  main = document.getElementById("main");
  main.innerHTML = main.innerHTML + html;
}

window.onload = function(){

///////////////////////////////////////////////////////////
drawHeader("Collections");

/// each

// this does the same job as each in Ruby

names = ['Alice','Bob', 'Charlie', 'Daisy'];

// following is equiv to Ruby;
// names.each { |name| "hello #{name}!"}

console.log("using _.each(array, func): ");
_.each(names, function(name){ console.log('hello'  + name + '!')});

console.log("\nusing _(array).each(func): ");
_(names).each(function(name){ console.log('hello'  + name + '!')});

/// map

greetings = _(names).map(function(name){ return "hello " + name + "!"});
console.log("\nmade this with _(array).map(func): ", greetings );

/// reduce

nums = [1,2,3,4];

// following is equiavlent to the ruby:
// nums.reduce(0) { |memo, num| memo + num }

sum = _(nums).reduce(function(memo, num){ return memo + num }, 0);
console.log('\nfound sum using reduce: ', sum);

/// reduceRight
/// find

students = [
  {name: "Alice",   age: 32, nationality: "British"},
  {name: "Bob",     age: 23, nationality: "British"},
  {name: "Charlie", age: 32, nationality: "British"},
  {name: "Daisy",   age: 45, nationality: "American"}
];

firstBrit = _(students).find(function(s){return s.nationality == "British"});
console.log("found first brit using find: ", firstBrit);

/// filter

allBrits = _(students).filter(function(s){return s.nationality == "British"});
console.log("found all brits using filter: ", allBrits);

/// where

britsAged32 = _(students).where({
  nationality: "British",
  age:          32 
});
console.log('found all brits aged 32 using where: ', britsAged32);

/// findWhere
/// reject
/// every

// following equiv to all? in ruby
// students.all? { |s| s.age > 16 }

allOver16 = _(students).every(function(s){ return s.age > 16 });
console.log('checked all over 16 using every: ', allOver16);

/// some   - equiv to Ruby any?
/// contains
/// invoke
/// pluck

ages = _(students).pluck('age');
console.log('plucked all ages using pluck: ', ages);

/// max

oldest = _(students).max(function(s){ return s.age });
console.log('found oldest student using max: ', oldest);

/// min
/// sortBy

studentsByAge = _(students).sortBy('age');

// same as

studentsByAge = _(students).sortBy(function(s){return s.age });
console.log('students sorted by age using sortBy: ', studentsByAge);

// Note - s.age would return inverse sort

/// groupBy
/// indexBy
/// countBy
/// shuffle
/// sample

randomPairOfStudents = _(students).sample(2);
randomStudent = _(students).sample();

console.log('picked these students at random using sample', randomStudent, randomPairOfStudents);
/// toArray
/// size

///////////////////////////////////////////////////////////
drawHeader("Arrays");

array = [1, 2, 2, ["foo", "bar"], false, 0, "", NaN, null, undefined, 100];

/// first

firstTwo = _(array).first(2);
console.log('found first 2 elements with first(): ', firstTwo);

/// initial
/// last

lastEl = _(array).last();
console.log('found last element with last(): ', lastEl);

/// rest
/// compact

nonFalsyValues = _(array).compact();
console.log('found and removed all falsy values using compact: ', nonFalsyValues);

/// flatten

flattened = _(array).flatten();
console.log('flattened array with flatten: ', flattened);
/// without
/// union
/// intersection

// ruby: [1,2,3] & [2,3] => [2,3]

commonELs = _(array).intersection([1,2,100]);
console.log('found common els with intersection: ', commonELs);

/// difference
/// uniq
/// zip
/// object
/// indexOf
/// lastIndexOf
/// sortedIndex
/// range

myRanges = [
  _.range(10),
  _.range(1,11),
  _.range(0, 30, 5),
  _.range(0,-10, -1),
  _.range(0)
];

console.log('made these ranges using range: ', myRanges);

///////////////////////////////////////////////////////////
drawHeader("Functions");

/// bind
/// bindAll
/// partial
/// memoize
/// delay

_.delay(function(){appendHtml("created this delayed message with delay")}, 1000);
console.log('keep an eye out for a delayed message in the browser...');

/// defer
/// throttle

function addMouseMessage(){
  appendHtml('MOUSEOVER! ');
}
throttledAddMouseMessage = _.throttle(addMouseMessage, 500);
document.getElementById('main').onmouseover = throttledAddMouseMessage;

/// debounce
/// once
/// after
/// wrap
/// compose

///////////////////////////////////////////////////////////
drawHeader("Objects");

/// keys

obj = {one: 1, two: 2, three: 3};

keys = _(obj).keys();
console.log('got obj keys with keys(): ', keys);

/// values

values = _(obj).values();
console.log('got obj values with values(): ', values);

/// pairs

pairs = _(obj).pairs();
console.log('got obj pairs with pairs(): ', pairs);

/// invert
/// functions
/// extend
/// pick
/// omit
/// defaults

passedOptions = {transitionDuration: 800};
defaultOptions = {
  transitionDuration: 200,
  loop:               true,
  slideshow:          false,
  waitTime:           1000
};

options = _(passedOptions).defaults(defaultOptions);
console.log('merged passed and default options using defaults(): ',options);

/// clone
/// tap
/// has
/// isEqual
/// isEmpty
/// isElement
/// isArray
/// isObject
/// isArguments
/// isFunction
/// isString
/// isNumber
/// isFinite
/// isBoolean
/// isDate
/// isRegExp
/// isNaN
/// isNull
/// isUndefined

///////////////////////////////////////////////////////////
drawHeader("Utility");

/// noConflict
/// identity
/// times
/// random
/// mixin
/// uniqueId
/// escape
/// unescape
/// result
/// template

helloWorld = _.template('hello <em><%= name %>!</em>', {name: 'world'});
console.log('made the following html using template: ', helloWorld);
appendHtml(helloWorld);


// to make a template equivalent to erb:
// <h2>Students</h2>
// <ul>
//   <% students.each do |s| %>
//     <li><%= s.name %></li>
//   <% end %>
// </ul>'

compiledTemplate = _.template('<h2>Students</h2><ul><% _(students).each(function(s){ %><li><%= s.name %></li><% }) %></ul>');

renderedTemplate = compiledTemplate({students: students});
appendHtml(renderedTemplate);


///////////////////////////////////////////////////////////
drawHeader("Chaining");

lines = [
  {num: 1, words: "I'm a lumberjack and I'm okay"},
  {num: 2, words: "I sleep all night and I work all day"},
  {num: 3, words: "He's a lumberjack and he's okay"},
  {num: 4, words: "He sleeps all night and he works all day"}
];

// word count with underscore (but no chanining)

lineWords = _(lines).map(function(line){ return line.words.split(' ') });
allWords = _(lineWords).flatten();
wordCounts = _(allWords).reduce(function(counts, word){
  counts[word] = (counts[word] || 0) + 1; // meains set the key with the count...so word is lumberjack
  return counts;
}, {});

console.log(lineWords);
console.log(allWords);
console.log('unchained word counts: ', wordCounts);

// word count with underscore chaining

wordCounts = _.chain(lines)
  .map(function(line){ return line.words.split(' ') })
  .flatten()
  .reduce(function(counts, word){
    counts[word] = (counts[word] || 0) + 1;
  return counts;
}, {}).value();

console.log('chained word counts: ', wordCounts);

// word count with vanilla javascript is crazy



/// chain
/// value

} // end of window.onload

























