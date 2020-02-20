// Array#myEach(callback) - receives a callback function 
// and executes the callback for each element in the array
// Note that JavaScript's forEach function has no return value (returns undefined)

Array.prototype.myEach = function(callback) {
    for(let i = 0; i < self.length; i++) {
        self[i].callback();
    }
}