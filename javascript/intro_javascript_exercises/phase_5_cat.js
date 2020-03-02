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

Cat.prototype.cuteStatement = function() {
    return `Everyone loves ${this.name}`;
}

console.log(nekoOne.cuteStatement());
console.log(nekoTwo.cuteStatement());

Cat.prototype.meow = function() {
    return `${this.name} says 'meow!'`;
}

console.log(nekoOne.meow());
console.log(nekoTwo.meow());