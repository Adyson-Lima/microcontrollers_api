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
  
  describe 'GET /api/v1/microcontrollers/{id}' do
   it 'Consegue listar um microcontroller especifico e retornar status 200?' do
     get :show, params: {id: @microcontroller.id}
     expect(response.body).to include_json(id: @microcontroller.id)
     expect(response).to have_http_status(200)
   end
  end
  
  describe 'POST /api/v1/microcontrollers' do
    it 'Consegue criar um microcontroller e retornar status 201?' do
      post :create, params: {microcontroller: {
      microcontroller_name: @microcontroller.microcontroller_name,
      microcontroller_description: @microcontroller.microcontroller_description,
      microcontroller_manufacturer: @microcontroller.microcontroller_manufacturer,
      microcontroller_image: @microcontroller.microcontroller_image},format: :json}
      
      expect(response.body).to include_json(
      microcontroller_name: @microcontroller.microcontroller_name)
      expect(response).to have_http_status(201)
    end
  end
  
  describe 'PATCH /api/v1/microcontrollers/{id}' do
    it 'Consegue atualizar um microcontroller e retornar status 200?' do
      microcontroller = Microcontroller.last
      patch :update, params: {microcontroller: {
      microcontroller_name: "msp430",
      microcontroller_description: @microcontroller.microcontroller_description,
      microcontroller_manufacturer: @microcontroller.microcontroller_manufacturer,
      microcontroller_image: @microcontroller.microcontroller_image},id: microcontroller.id}
      
      expect(response.body).to include_json(microcontroller_name: "msp430")
      expect(response).to have_http_status(200)
    end
  end
  
  describe 'DELETE /api/v1/microcontrollers/{id}' do
    it 'Consegue apagar um microcontroller e retornar status 204?' do
      microcontroller = Microcontroller.last
      delete :destroy, params: {id: microcontroller.id}
      
      expect(Microcontroller.all).not_to include(microcontroller) 
      expect(response).t have_http_status(204)
    end
  end
  
end
