json.extract! vehicle, :id, :name, :drag_c, :drag_area, :friction_c_ground, :friction_c_trans, :mass, :wheel_diameter, :gear_ratio, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
