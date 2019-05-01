class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @dog = Dog.find(@employee.dog_id)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employ_params)
    if @employee.valid?
      flash[:message] = "Employee Hired!"
      redirect_to @employee
    else
      flash[:message] = "#{@employee.errors.full_messages[0]}"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @employee.update(employ_params)
      flash[:message] = "Employee Updated!"
      redirect_to@employee
    else
      flash[:message] = "#{@employee.errors.full_messages[0]}"
      render 'edit'
    end
  end

  def destroy
    flash[:message] = "Employee has been fired!"
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employ_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end

end
