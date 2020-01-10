require 'rspec'
require 'chef'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Paul") }
  subject(:brownie) { Dessert.new('brownie', 1 , chef) }

  describe "#initialize" do

    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end
    it "sets a quantity" do
      expect(brownie.quantity).to eq(1)
    end
    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('brownie', 'asdf', chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to_not include('chocolate')
      brownie.add_ingredient('chocolate')
      expect(brownie.ingredients).to include('chocolate')
    end
    
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      brownie.add_ingredient('butter')
      brownie.add_ingredient('chocolate')
      brownie.add_ingredient('sugar')
      random_ingredients = ['butter', 'chocolate', 'sugar']
      expect(brownie.ingredients).to eq(random_ingredients)
      brownie.mix!
      expect(brownie.ingredients.sort).to eq(random_ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.quantity).to eq(1)
      brownie.eat(1)
      expect(brownie.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(brownie.quantity).to eq(1)
      expect { brownie.eat(9001) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
