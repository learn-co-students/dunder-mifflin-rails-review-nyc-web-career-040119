class EmployeesController < ApplicationController

  def index
    @employees = Employee.all.sort_by{|employee|employee.first_name.downcase }
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      flash[:message] = "Welcome to the club buddy!"
      redirect_to @employee
    else
      flash[:message] = @employee.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to @employee
  end


  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id, )
  end

end
