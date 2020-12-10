/*
Now let's move over to the node environment. Create a new javascript file to run in node.

We are going to write a simple function that asks a user if they'd like tea and biscuits. Chronologically, your function should:

1. Ask the user if they'd like tea.
2. console.log their response.
3. Ask the user if they'd like biscuits.
4. console.log their complete response: So you ${firstAns} want tea and you ${secondAns} want coffee.
5. Close the reader.
*/

/* readline library stuff
const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});
*/

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

const teaAndBiscuits = () => {
    // chained variable assignments in javascript with no value yet
    let first, second;
    console.log(first, " ", second);
    reader.question('Would you like some tea?', (res) => {
        first = res;
        console.log(`You replied ${res}.`);
        reader.question('Would you like some biscuits?', (res) => {
            second = res;
            console.log(`You replied ${res}.`);
        });
        if (first !== undefined && second !== undefined) {
        const firstRes = (first === 'yes') ? 'do' : 'don\'t';
        const secondRes = (second === 'yes') ? 'do' : 'don\'t';
        console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
        // reader.close();
        }
    });
    
    
    
   
}

teaAndBiscuits();