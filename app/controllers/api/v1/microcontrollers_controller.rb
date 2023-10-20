class Api::V1::MicrocontrollersController < ApplicationController 
  
  before_action :set_microcontroller, only: %i[show update destroy]
  
  def index
    @microcontrollers = Microcontroller.all
    render json: @microcontrollers 
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
