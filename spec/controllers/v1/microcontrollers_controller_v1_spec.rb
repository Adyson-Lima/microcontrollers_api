require 'rails_helper'

RSpec.describe Api::V1::MicrocontrollersController, type: :controller do
  
  before {
    @microcontroller = Microcontroller.create(
    microcontroller_name: "ESP32", 
    microcontroller_description: "Microcontrolador com wifi", microcontroller_manufacturer: "espressif",
    microcontroller_image: "https://br.mouser.com/images/espressifsystems/images/ESP32-S3-IC_SPL.jpg")
    }
  
  describe 'GET /api/v1/microcontrollers' do
    
    it 'Consegue listar todos os microcontrollers e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
    
    
    
  end
end
