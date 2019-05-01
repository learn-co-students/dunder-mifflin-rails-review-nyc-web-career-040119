class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, presence: true, uniqueness: true, unless: :alias_none?
  validates :title, presence: true, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def alias_none?
    self.alias == "none"
  end
end
