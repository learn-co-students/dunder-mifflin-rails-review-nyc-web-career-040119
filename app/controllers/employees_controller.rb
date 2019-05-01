class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end


  def new
    @employee = Employee.new
    @dogs = Dog.all
  end


  def create
    @dogs = Dog.all
    @employee = Employee.new(employee_params)

    if @employee.valid?
      @employee.save
      flash[:message] = "Sucessfully created employee"
      redirect_to @employee
    else
      flash[:message] = @employee.errors.full_messages
      render :edit
    end
  end


  def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end


  def update
    @dogs = Dog.all
    @employee = Employee.find(params[:id])
    @employee.assign_attributes(employee_params)

    if @employee.valid?
      @employee.save
      flash[:message] = "Sucessfully edited employee"
      redirect_to @employee
    else
      flash[:message] = @employee.errors.full_messages
      render :edit
    end
  end


  def show
    @employee = Employee.find(params[:id])
  end



  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end
end
