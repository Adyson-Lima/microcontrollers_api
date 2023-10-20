require 'rails_helper'

RSpec.describe Microcontroller, type: :model do
  
  before { @microcontroller = Microcontroller.new }
  
  describe 'Teste de preenchimento de campos do model Microcontroller' do
    
    it 'microcontroller_name preenchido?' do
      @microcontroller.microcontroller_name = "pic16f628a"
      expect(@microcontroller.microcontroller_name).to eq("pic16f628a")
    end
    
    it 'microcontroller_description preenchido?' do
      @microcontroller.microcontroller_description = "Um microcontrolador adequado para iniciar"
      expect(@microcontroller.microcontroller_description).to eq("Um microcontrolador adequado para iniciar")
    end
    
    it 'microcontroller_manufacturer preenchido?' do
      @microcontroller.microcontroller_manufacturer = "microchip"
      expect(@microcontroller.microcontroller_manufacturer).to eq("microchip")
    end
    
    it 'microcontroller_image preenchido?' do
      @microcontroller.microcontroller_image = "https://www.majju.pk/assets/uploads/2019/08/pic16f628a.jpg"
      expect(@microcontroller.microcontroller_image).to eq("https://www.majju.pk/assets/uploads/2019/08/pic16f628a.jpg")
    end    
    
  end
  
  describe 'Teste de validacao do model Microcontroller' do
    
    it 'Microcontroller valido com campos obrigatorios preenchidos?' do
      @microcontroller.microcontroller_name = "ESP32"
      @microcontroller.microcontroller_description = "Microcontrolador com wifi"
      @microcontroller.microcontroller_manufacturer = "espressif"
      @microcontroller.microcontroller_image = "https://br.mouser.com/images/espressifsystems/images/ESP32-S3-IC_SPL.jpg"
      
      expect(@microcontroller).to be_valid
    end
    
    it 'Microcontroller invalido com campos obrigatorios em branco?' do
      microcontroller = Microcontroller.new
      expect(microcontroller).to be_valid
    end
    
  end
end
