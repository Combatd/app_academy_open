class Dog
    # set method initializes entire Dog
    def initialize (name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end
    # get name
    def name
        @name # return instance variable
    end
    # get breed
    def breed
        @breed # return instance variable
    end
    # get age
    def age
       @age # return instance variable 
    end

    # set age
    def age=(num) # user passes in new number
        @age = num # sets instance variable age to a new number
    end

    # get bark
    def bark # higher age dog will have capitalized bark
        return @bark.upcase if @age > 3 # comparing age instance variable
        return @bark.downcase
    end
    
    # get favorite_foods
    def favorite_foods
        @favorite_foods # return instance variable
    end

    def favorite_food? (food)
        newFood = food.downcase
        newArr = []
        @favorite_foods.each {|ele| newArr << ele.downcase}
        newArr.include?(newFood)
    end
end
