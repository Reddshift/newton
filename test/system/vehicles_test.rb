require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "creating a Vehicle" do
    visit vehicles_url
    click_on "New Vehicle"

    fill_in "Drag area", with: @vehicle.drag_area
    fill_in "Drag c", with: @vehicle.drag_c
    fill_in "Friction c ground", with: @vehicle.friction_c_ground
    fill_in "Friction c trans", with: @vehicle.friction_c_trans
    fill_in "Gear ratio", with: @vehicle.gear_ratio
    fill_in "Mass", with: @vehicle.mass
    fill_in "Name", with: @vehicle.name
    fill_in "Wheel diameter", with: @vehicle.wheel_diameter
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle" do
    visit vehicles_url
    click_on "Edit", match: :first

    fill_in "Drag area", with: @vehicle.drag_area
    fill_in "Drag c", with: @vehicle.drag_c
    fill_in "Friction c ground", with: @vehicle.friction_c_ground
    fill_in "Friction c trans", with: @vehicle.friction_c_trans
    fill_in "Gear ratio", with: @vehicle.gear_ratio
    fill_in "Mass", with: @vehicle.mass
    fill_in "Name", with: @vehicle.name
    fill_in "Wheel diameter", with: @vehicle.wheel_diameter
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle" do
    visit vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle was successfully destroyed"
  end
end
