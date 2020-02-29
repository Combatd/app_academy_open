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
    else if (arr.length === 1) {
        return arr[0];
    } else {
        arr[0] += arr.pop();
        return sumRec(arr);
    }
    
}

console.log(sumRec([1,2,3,4,5]), " sumRec");

// exponent(base, exp) - receives a base and exponent, returns the base raise to the power of the exponent(base ^ exp)

const exponent = (base, exp) => {
    if (exp === 0) {
        return 1
    } else if (exp === 1) {
        return base
    } else {
        base = base * exponent(base, exp - 1);
        return base;
    }
}

console.log(exponent(2, 5), " <-- exponent(base, exp)");

// fibonacci(n) - receives an integer, n, and returns the first n Fibonacci numbers
// Fn = Fn - 1 =+ Fn - 2
function fibonacci(n) {

    if (n === 1) {
       return [0]
    } else if (n === 2)  {
        return [0, 1];
    } 
        let fibArray = fibonacci(n - 1);
        f1 = 1;
        f2 = 2;
        
        fibArray.push(fibArray[fibArray.length - f1] + fibArray[fibArray.length - f2])
        return fibArray;
}

console.log(fibonacci(7), " <-- fibonacci(n)");

// deepDup(arr) - deep dup of an Array
const deepDup = (arr) => {
    // check if "not an instance of the Array class" is true
    // If it isn't an Array.new, then we just return right away
    if (!(arr instanceof Array)) {
        return arr;
    }
    // if created by Array.new, we have to map through that instance
    // that has prototypal inheritance from Array class
    return arr.map( (ele) => {
        return deepDup(ele);
    });
}

console.log(deepDup([1, 2, 2, 3, 3, 3]));