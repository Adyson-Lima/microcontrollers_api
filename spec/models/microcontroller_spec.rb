require 'rails_helper'

RSpec.describe Microcontroller, type: :model do
  
  before { @microcontroller = Microcontroller.new }
  
  describe 'Teste de preenchimento de campos do model Microcontroller' do
    
    it 'microcontroller_name preenchido?' do
      @microcontroller.microcontroller_name = "pic16f628a"
      expect(@microcontroller.microcontroller_name).to eq("pic16f628a")
    end
    
    
  end
end
