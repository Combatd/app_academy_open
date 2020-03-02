class Cat {
    constructor(name, owner) {
        this.name = name;
        this.owner = owner;
    }
}

Cat.prototype.cuteStatement = () => {
    return `${owner} lovse ${name}`;
}