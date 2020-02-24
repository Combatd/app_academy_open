// range(start, end) - receives a start and end value, returns an array from start up to end
const range = (start, end) => {
    if (!start || !end) {
        return self;
    }

    let index = 0 + end;
    let rangeArr = [];
    while (index >= start) {
        rangeArr.unshift(index);
        index--;
    }
    return rangeArr;
}

console.log(range(1, 5));


// sumRec(arr) - receives an array of numbers and recursively sums them

function sumRec(arr) {
    if (!arr[0]) {
        return false;
    }
    if (arr.length === 1) {
        return arr[0];
    }
    
    let index = arr.length - 1;
    let sum = 0;

    while(index >= 0) {
        sum += arr[index];
        index--;
    }
    return sum;
}

console.log(sumRec([1,2,3,4,5]), " sumRec");

// exponent(base, exp) - receives a base and exponent, returns the base raise to the power of the exponent(base ^ exp)