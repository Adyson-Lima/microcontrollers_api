class CreateMicrocontrollers < ActiveRecord::Migration[7.0]
  def change
    create_table :microcontrollers do |t|
      t.string :microcontroller_name
      t.string :microcontroller_description
      t.string :microcontroller_manufacturer
      t.string :microcontroller_image

      t.timestamps
    end
  end
end
