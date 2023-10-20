class Api::V1::MicrocontrollersController < ApplicationController 
  
  before_action :set_microcontroller, only: %i[show update destroy]
  
  def index
    @microcontrollers = Microcontroller.all
    render json: @microcontrollers 
  end
  
  def show
    render json: @microcontroller
  end
  
  def create
    @microcontroller = Microcontroller.new(microcontroller_params)
    if @microcontroller.save
      render json: @microcontroller, status: :created, 
      location: api_v1_microcontroller_url(@microcontroller)
    else
      render json: @microcontroller.errors, status: :internal_server_error
    end
  end
  
  def update
    if @microcontroller.update(microcontroller_params)
      render json: @microcontroller
    else
      render json: @microcontroller.errors, status: :internal_server_error
    end
  end
  
private

def set_microcontroller
  @microcontroller = Microcontroller.find(params[:id])
end

def microcontroller_params
  params.require(:microcontroller).permit(
    :microcontroller_name, 
    :microcontroller_description,
    :microcontroller_manufacturer,
    :microcontroller_image)
end

end
