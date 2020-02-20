// Phase I: Callbacks
// Write a function titleize that takes an array of names and a function (callback).
// titleize should use Array.prototype.map to create a new array full of 
// titleized versions of each name
//  - titleize meaning "Roger" should be made to read "Mx. Roger Jingleheimer Schmidt".
// Then pass this new array of names to the callback, 
// which should use Array.prototype.forEach to print out each titleized name.

function titleize(names) {
    // slice will start from second character
    return names.map( name => name[0].toUpperCase() + name.slice(1))
}

newNames = titleize(["Mary", "Brian", "Leo"]);

function printCallback(titleizedNames) {
    titleizedNames.forEach(name => {
        console.log(`Mx. ${name} Jingleheimer Schmidt`)
    });
}

printCallback(newNames);



// Phase II: Constructors, Prototypes, and this
// First write a constructor function for an elephant.
// Each elephant should have a name, height(in inches), 
// and array of tricks in gerund form
// (e.g. "painting a picture" rather than "paint a picture").
function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = [] // initalize empty array

    this.trumpet = () => {
        console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
    }

    this.grow = function() {
        this.height = this.height + 12;
        console.log(`${this.name} height is now ${this.height}`);
    }

    this.addTrick = (trick) => {
        this.tricks.push(trick);
    }

    this.play = function() {
        console.log(`${this.name} is ${this.tricks[Math.floor(Math.random() * ((this.tricks.length) - 0) + 0)]}`);
    }

    this.paradeHelper = (elephant) => {
        console.log(`${elephant} is trotting by!`);
    }
}

const eli = new Elephant("eli", 100);
eli.trumpet();
eli.grow();
eli.addTrick("eating");
eli.addTrick("drinking");
console.log(eli.tricks);
eli.play()

// Phase III: Function Invocation

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

// Now let's create a function called paradeHelper that we'll use to 
// have an elephant parade. It should take a single elephant as an 
// argument; this way, we can pass it as a callback to forEach when 
// called on our herd. 
// Make sure to store it as a property on the Elephant object. 
// You can populate it with any console.log statement you want to 
// build your parade (e.g. "___ is trotting by!").


herd.forEach( (elephant) => elephant.paradeHelper(elephant.name) );

// Phase IV: Closures

// Let's make a function dinerBreakfast. 
// Ultimately, we want it to return an anonymous closure, 
// which we will be able to use to keep adding 
// breakfast foods to our initial order.

const dinerBreakfast = (food) => {
    let order = ["cheesey scrambled eggs"];
    // join the order from array elements into a string
    console.log(`I'd like ${order.join(' and ')} please.`);

    // anonymous arrow function is closure that returns right away
    return (food) => {
        order.push(food);
        console.log(`I'd like ${order.join(' and ')} please.`);
    }
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");