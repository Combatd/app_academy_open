class Bootcamp
  
    def initialize (name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    # instance variables teachers and students are empty arrays
    @teachers = Array.new()
    @students = Array.new()
    # instance variable grades is a hash with empty array as default value
    @grades = Hash.new{ |hash, key| hash[key] = [] }
    end



end
