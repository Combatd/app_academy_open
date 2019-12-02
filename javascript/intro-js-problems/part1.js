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

console.log(madLib('make', 'best', 'guac'));


function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));


const fizzBuzz = (arr) => {   
    const newArr = [];
    arr.forEach( (ele) => {
       if ((ele % 3 === 0 || ele % 5 === 0) && !(ele % 3 === 0 && ele % 5 === 0)) {
           newArr.push(ele);
       }    
    });
    return newArr;
}

console.log(fizzBuzz([1,2,3,4,5,6,7,8,9,10]));

function isPrime(num) {
    if (num < 2) {
        return false;
    }

    if (num === 2) {
        return true;
    }

    for(let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false;
        }
    }

    return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));