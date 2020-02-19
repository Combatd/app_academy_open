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
        console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`)
    }
}

const eli = new Elephant("eli", 100);
eli.trumpet();