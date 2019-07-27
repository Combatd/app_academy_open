require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees # get instance variables

  def initialize (name, funding, salaries)
    @name = name # set string instance variable
    @funding = funding # set number instance variable
    @salaries = salaries #  set hash instance variable
    @employees = [] # empty array
  end

  def valid_title? (title)
    @salaries.include?(title)
  end

  def greater_than? (startup_2)
    startup_1 = self # compare another startup to the current startup
    @funding > self.startup_2.funding # call get methods for funding
  end

  def hire (employee_name, title)
    if valid_title?(title)
        new_employee = Employee.new(employee_name, title) # initialize new instance
        @employees << new_employee # shovel into array
    else
        raise_error(employee_name, title) # exception
    end
  end

  def size
    @employees.length # get number of employees
  end

  def pay_employee (initialize) # takes an employee instance
    
  end

end
