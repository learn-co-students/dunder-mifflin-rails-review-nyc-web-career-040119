class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    @employees = Employee.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  # def new
  #   @dog = Dog.new
  # end
  #
  # def create
  #   @dog = Dog.create(dog_params)
  #   redirect_to dogs_path
  # end
  #
  # def edit
  #   @dog = Dog.find(params[:id])
  # end
  #
  # def update
  #   @dog = Dog.find(params[:id])
  #   @dog.update(dog_params)
  #
  #   if @dog.save
  #     redirect_to dogs_path
  #   else
  #     render :edit
  #   end
  # end
  #
  #
  #
  # private
  #
  # def dog_params
  #   params.require(:dog).permit(:name, :age, :breed)
  # end


end
