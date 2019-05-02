class Employee < ApplicationRecord
  belongs_to :dog
  validates :first_name, presence: true
  validates :first_name, uniqueness: true
  def full_name
    self.first_name + " " + self.last_name
  end
end
