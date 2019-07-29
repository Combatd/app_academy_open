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

  def >(startup_2)
    startup_1 = self # compare another startup to the current startup
    startup_1.funding > startup_2.funding
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
  
  def pay_employee (employee) # takes an employee instance with name and title
    money_owed = @salaries[employee.title] # title is hash key
    if @funding >= money_owed
      employee.pay(money_owed) # call pay method
      @funding -= money_owed # takes away from funding
    else
      raise "not enough funding to pay employee"
    end
  end

  def payday
    @employees.each { |employee|  self.pay_employee(employee) }
  end

  def average_salary
    salaries_arr = @salaries.map do |job, idx|
      @employees.title
    end
  end

  def close 
    @employees = [] # set employees instance variable to an empty array
    @funding = 0 # set funding instance variable to 0
  end

  def acquire (another_startup) 
    
  end

end
