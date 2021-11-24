class InfoController < ApplicationController
  before_action :find_employee, only: [:show, :update, :destroy]
  
  def index
   @information = Information.all
   render json: @information, only: [:fname, :lname, :email_id]
  end

   
  def show
    render json: @information
  end
   
  def create
    @information = Information.new(information_params)
    @information.save
    render json: @information, status: :created, location: @information
  end 
   
  def update
    @information.update(information_params)
    render json: @information
  end 
   
  def destroy
    @information.destroy
  end 
 
 private
  def information_params
   params.require(:information).permit(:fname, :lname, :email_id)
  end

  def find_information
   @information = Information.find(params[:id])
  end
end  


  
