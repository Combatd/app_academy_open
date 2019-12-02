// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// global scope var cannot be assigned twice!

// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping2();
// will console log in block first because if statement runs first

// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// cannot declare var in local scope when a function level constant is declared

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping4();
// declares a localized variable that can be confused for outer x

// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

// cannot have two declarations of let x in same scope!
//  should be variable reassignment instead

// Write a function that takes three strings - a verb, an adjective, and a noun
// uppercases and interpolates them into the sentence "We shall VERB the ADJECTIVE NOUN". 
// Use ES6 template literals.

const madLib = (verb, adjective, noun) => {
    return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
};

console.log(madLib('make', 'best', 'guac'))