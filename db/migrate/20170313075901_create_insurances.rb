class CreateInsurances < ActiveRecord::Migration[5.0]
  def change
    create_table :insurances do |t|
      t.string :time
      t.string :temperature
      t.string :heater
      t.string :pressure_heater
      t.string :pressure_valve
      t.string :flow_rate_valve
      t.string :waterlevel_tank
      t.string :OEE_waterflow
      t.string :OEE_heater
      t.string :OEE_valve
      t.string :Overall_OEE
      t.string :predicted_OEE
      t.string :Upper_range
      t.string :lower_range
      t.string :premium
      t.string :stability

      t.timestamps
    end
  end
end
