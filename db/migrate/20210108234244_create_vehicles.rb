class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.float :drag_c
      t.float :drag_area
      t.float :friction_c_ground
      t.float :friction_c_trans
      t.float :mass
      t.float :wheel_diameter
      t.float :gear_ratio

      t.timestamps
    end
  end
end
