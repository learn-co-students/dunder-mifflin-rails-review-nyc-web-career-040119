class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sorted
    @dogs_counted = Dog.all_by_employee_count
  end
end
