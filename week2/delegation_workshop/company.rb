class Ceo

  def initialize(coo = Coo.new)
    @coo = coo
  end

  def make_company_efficient
    @coo.find_company_savings
  end
end

class Coo

  def initialize(hr_manager = HRManager.new)
    @hr_manager = hr_manager
  end

  def find_company_savings
    @hr_manager.reduce_payroll
  end
end

class HRManager

  def initialize(employees = Employee.new)
    @employees = employees
  end

  def reduce_payroll(employees)

  end
end

class Employee
  def initialize
    
  end
end
