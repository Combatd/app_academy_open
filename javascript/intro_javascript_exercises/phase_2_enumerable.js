// Array#myEach(callback) - receives a callback function 
// and executes the callback for each element in the array
// Note that JavaScript's forEach function has no return value (returns undefined)

Array.prototype.myEach = function(callback) {
    for(let i = 0; i < self.length; i++) {
        callback(this[i]);
    }
}

// Array#myMap(callback) - 
// receives a callback function, returns a new array of the results of 
// calling the callback function on each element of the array
// should use myEach and a closure

Array.prototype.myMap = function(callback) {
    newArray = []
    function runCallback() {
        for(let i = 0; i < self.length; i++) {
            newArray.push(self.myEach(callback));
        }
    } 
    newArray = runCallback();
    return newArray;
}