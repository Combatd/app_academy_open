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

    # get name instance
    def name
       @name 
    end

    # get slogan instance
    def slogan
        @slogan
    end

    # get teachers instance
    def teachers
        @teachers
    end

    # get students instance
    def students
        @students
    end

    # hire method takes string and shovels it into teachers array
    def hire (teacher)
        @teachers << teacher
    end

    # enroll will take a string and add them if below capacity
    def enroll (student)
        if @students.length < @student_capacity
            @students << student # add the student to the array
            return true # the enrollment was successful
        else
            return false # the enrollment was not successful
        end
    end

    # enrolled? will return true or false based on student enrollment
    def enrolled? (student)
        @students.include?(student) # returns true or false on array existence
    end

    # student teacher ratio method
    def student_to_teacher_ratio
        ratio = @students.length / @teachers.length
        ratio # return the ratio
    end

    # add grade will add grades (number) to the students that exist
    def add_grade (student, grade)
        if enrolled?(student)
            @grades[student] << grade
            return true # returns true
        else
            return false
        end

    end    

end
