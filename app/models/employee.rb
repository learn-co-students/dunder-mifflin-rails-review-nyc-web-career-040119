class Employee < ApplicationRecord
  belongs_to :dog
  # validates :title, :alias, uniqueness: true

  def to_info
    self.first_name + " " + self.last_name + " team:" + self.alias + ", title: "+ self.title + ", located at:" + self.office
  end


end
