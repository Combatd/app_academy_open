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
    } else if (course.conflictsWith()) {
        return -1;
    }
    this.courses.push(course);
    course.addStudents(this);
}

Student.prototype.courseLoad = function() {
    departmentHash = {};
    this.courses.forEach(course => {
        departmentHash.department = course.department;
        departmentHash[department] = course.credits;
    });
    return departmentHash;
}

function Course(courseName, department, credits, timeBlock, daysOfWeek) {
    this.courseName = courseName;
    this.department = department;
    this.credits = credits;
    this.students = [];
    this.timeBlock = timeBlock;
    this.daysOfWeek = daysOfWeek;
}

Course.prototype.addStudents = function(student) {
    this.students.push(student);
}

Course.prototype.conflictsWith = function(secondCourse) {
    if (this === secondCourse) {
        return true;
    } else {
        return false;
    }
}