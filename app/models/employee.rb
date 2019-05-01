class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    self.first_name + " " + self.last_name
  end

end
