require "test_helper"

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { drag_area: @vehicle.drag_area, drag_c: @vehicle.drag_c, friction_c_ground: @vehicle.friction_c_ground, friction_c_trans: @vehicle.friction_c_trans, gear_ratio: @vehicle.gear_ratio, mass: @vehicle.mass, name: @vehicle.name, wheel_diameter: @vehicle.wheel_diameter } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { drag_area: @vehicle.drag_area, drag_c: @vehicle.drag_c, friction_c_ground: @vehicle.friction_c_ground, friction_c_trans: @vehicle.friction_c_trans, gear_ratio: @vehicle.gear_ratio, mass: @vehicle.mass, name: @vehicle.name, wheel_diameter: @vehicle.wheel_diameter } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
