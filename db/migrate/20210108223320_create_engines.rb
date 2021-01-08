class CreateEngines < ActiveRecord::Migration[6.1]
  def change
    create_table :engines do |t|
      t.float :mass
      t.float :max_torque
      t.float :max_hp
      t.float :max_rpm

      t.timestamps
    end
  end
end
