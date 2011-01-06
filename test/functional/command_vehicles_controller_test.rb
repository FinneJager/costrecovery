require 'test_helper'

class CommandVehiclesControllerTest < ActionController::TestCase
  setup do
    @command_vehicle = command_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:command_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create command_vehicle" do
    assert_difference('CommandVehicle.count') do
      post :create, :command_vehicle => @command_vehicle.attributes
    end

    assert_redirected_to command_vehicle_path(assigns(:command_vehicle))
  end

  test "should show command_vehicle" do
    get :show, :id => @command_vehicle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @command_vehicle.to_param
    assert_response :success
  end

  test "should update command_vehicle" do
    put :update, :id => @command_vehicle.to_param, :command_vehicle => @command_vehicle.attributes
    assert_redirected_to command_vehicle_path(assigns(:command_vehicle))
  end

  test "should destroy command_vehicle" do
    assert_difference('CommandVehicle.count', -1) do
      delete :destroy, :id => @command_vehicle.to_param
    end

    assert_redirected_to command_vehicles_path
  end
end
