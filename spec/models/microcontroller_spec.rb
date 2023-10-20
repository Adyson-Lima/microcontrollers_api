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
    
    
  end
end
