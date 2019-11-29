"use strict";

function soundMaker(sound, times) {
    
    // closure
    function makeSound() {
        console.log(`${sound}`);
    }

    for(let i = 0; i < times; i++) {
        makeSound();
    }

}

soundMaker("woof", 5);



function summation(arr) {
    let sum = 1;

    // closure
    function summer() {
        for(let i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
    }

    summer();

    return sum;
}

console.log(summation([1,2,3,4]));



let callback = function() {
    console.log("It has been 5 seconds!");
}
let timeToWait = 5000; // ms


global.setTimeout(callback, timeToWait);

// more likely to see:
global.setTimeout(function() { 
    console.log("It has been 5 seconds!") 
}, 5000);
//  ** this is ES5

// ES6:
global.setTimeout( () => { 
    console.log("It has been 5 seconds!"); 
}, 5000 );
// ** preferred syntax