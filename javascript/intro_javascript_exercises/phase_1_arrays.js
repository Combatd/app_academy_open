// Array#uniq - returns a new array containing each individual element of the original array only once(creating all unique elements)
// the elements should be in the order in which they first appear in the original array
// should not mutate the original array
const arr1 = [1, 2, 2, 3, 3, 3];

Array.prototype.uniq = function() {
    elements = [] // dictionary array
    this.forEach( (element) => {
        if (!elements.includes(element) ) {
            elements.push(element);
        }
    });
    console.log(elements + " elements");
    return elements;
}

arr1.uniq();

// Array#twoSum - returns an array of position pairs where the elements sum to zero

Array.prototype.twoSum = function() {
    newArray = this.map( (element, index) => {
        
    })
}