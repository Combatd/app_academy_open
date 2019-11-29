function NBAPlayer(name, team, position) {
    // constructor function
    this.name = name;
    this.team = team;
    this.position = position;
}

let curry = new NBAPlayer("Steph Curry", "GS Warriors", "Point Guard");

console.log(curry);
console.log(curry.__proto__); // => {}
console.log(NBAPlayer.prototype); // => {}

// define dunk on NBAPlayer.prototype
NBAPlayer.prototype.dunk = function() {
    console.log(`${this.name} dunks!`);
}

// arrow functions DO NOT have the construct method

console.log(NBAPlayer.prototype); // NBAPlayer { dunk: [Function] }

// Looks in the NBAPlayer for the funcition, and doesn't find it.
// Nnde.js looks into the NBAPlayer.prototype and finds dunk()
curry.dunk(); // => "Steph Curry dunks!"

curry.name = "Steph"; // reassign curry's name property

curry.dunk(); // => "Steph dunks!"