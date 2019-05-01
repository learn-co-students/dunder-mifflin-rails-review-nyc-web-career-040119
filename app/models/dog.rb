class Dog < ApplicationRecord
  has_many :employees



  def self.all_by_employee_count
    Dog.all.each_with_object({}) do |dog, hash|
      hash[dog] = dog.employees.count
    end.sort_by do |dog, num_employees|
      [-1 * num_employees, dog.name]
    end
  end
end
