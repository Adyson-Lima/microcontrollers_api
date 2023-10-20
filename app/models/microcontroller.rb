class Microcontroller < ApplicationRecord
  validates :microcontroller_name, :microcontroller_description, :microcontroller_manufacturer, :microcontroller_image, presence: true 
end
