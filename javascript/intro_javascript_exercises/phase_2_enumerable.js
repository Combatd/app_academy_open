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

// Array#myReduce(callback[, initialValue]) - 
// (like Ruby's Array#inject) receives a callback function, and optional 
// initial value, returns an accumulator by applying the callback function 
// to each element and the result of the last invocation of the callback 
// (or initial value if supplied)

Array.prototype.myReduce = function(callback, initialValue) {
    let arr = this;
    // default if initialValue not provided
    if (!initialValue) {
        initialValue = this[0];
        arr = arr.slice(1);
    }
    let result = initialValue
    arr.myEach(function(ele) {
        result = callback(result, ele)
    });
    return result;
}