class Student {
    constructor(firstName, lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.courses = [];
    }
}

Student.prototype.name = function() {
    return this.firstName + " " + this.lastName;
}

Student.prototype.enroll = function(course) {
    if (this.courses.includes(course)) {
        return -1;
    }
    
    this.courses.push(course);
    course.students.push(this);
}

Student.prototype.courseLoad = function() {
    departmentHash = {};
    this.courses.forEach(course => {
        departmentHash.department = course.department;
        departmentHash[department] = course.credits;
    });
    return departmentHash;
}