require 'faker'

puts 'Gerando microcontroladores...'

10.times do |i|
  Microcontroller.create(
    microcontroller_name: ["PIC", "MSP-430","esp32","atmega-328p"].sample, 
    microcontroller_description: 
    ["um bom microcontrolador", "bom custo beneficio"].sample, 
    microcontroller_manufacturer: ["microchip", "china"].sample, 
    microcontroller_image: ["http://url.com", "http://url2.com"].sample, 
    )
end

puts 'Microcontroladores gerados com sucesso!'
