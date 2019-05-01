class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :grab_all

  private

  def grab_all
    @dogs = Dog.all
    @employees = Employee.all
  end


end
