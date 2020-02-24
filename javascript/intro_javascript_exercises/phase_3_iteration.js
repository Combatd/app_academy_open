// Array#bubbleSort - 
// receives an array, returns a sorted array by implementing 
// bubble sort sorting algorithm

Array.prototype.bubbleSort = function() {
    // make copy of array
    arr = this.slice(1);
    let sorted = false;
    // recursion
    while (!sorted) {
        sorted = true;
        arr.forEach(ele, idx) {
            if (ele < arr[idx + 1]) {
                newEle = arr[idx + 1];
                oldEle = arr[idx];
                ele = newEle
                arr[idx + 1] = oldEle;

                sorted = false;
            }
        }
    }
    return arr;
}