require 'test_helper'

class RescueUnitsControllerTest < ActionController::TestCase
  setup do
    @rescue_unit = rescue_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rescue_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rescue_unit" do
    assert_difference('RescueUnit.count') do
      post :create, :rescue_unit => @rescue_unit.attributes
    end

    assert_redirected_to rescue_unit_path(assigns(:rescue_unit))
  end

  test "should show rescue_unit" do
    get :show, :id => @rescue_unit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rescue_unit.to_param
    assert_response :success
  end

  test "should update rescue_unit" do
    put :update, :id => @rescue_unit.to_param, :rescue_unit => @rescue_unit.attributes
    assert_redirected_to rescue_unit_path(assigns(:rescue_unit))
  end

  test "should destroy rescue_unit" do
    assert_difference('RescueUnit.count', -1) do
      delete :destroy, :id => @rescue_unit.to_param
    end

    assert_redirected_to rescue_units_path
  end
end
