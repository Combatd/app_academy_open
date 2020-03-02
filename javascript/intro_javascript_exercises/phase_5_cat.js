class Cat {
    constructor(name, owner) {
        this.name = name;
        this.owner = owner;
    }
}

Cat.prototype.cuteStatement = function() {
    return `${this.owner} loves ${this.name}`;
}

let nekoOne = new Cat("One", "Lucy");
let nekoTwo = new Cat("Luna", "Usagi");

console.log(nekoOne.cuteStatement());
console.log(nekoTwo.cuteStatement());