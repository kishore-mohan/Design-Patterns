module Student
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observer.delete(observer)
  end

  def notify_observers
    @observers.each{|obj| obj.update self }  
  end
end

class Employee
  include Student
  attr_reader :name, :title, :salary
  def initialize name, title, salary
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary= new_salary
    old_salary = @salary
    @salary = new_salary
  
    if old_salary != new_salary
      notify_observers
    end
  end

end

class Payroll
  def update changed_employee
    puts "Cut a new check for #{changed_employee.name}!"
    puts "His salary is now #{changed_employee.salary}!"
   end
end

class TaxMan
    def update changed_employee
        puts "Send #{changed_employee.name} a new tax bill!"
    end
end


emp = Employee.new('fred', "Mr.", 3000)
payroll = Payroll.new
tax_man = TaxMan.new

emp.add_observer payroll
emp.add_observer tax_man
emp.salary = 3500
