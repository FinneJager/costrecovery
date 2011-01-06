require 'test_helper'

class HazmatUnitsControllerTest < ActionController::TestCase
  setup do
    @hazmat_unit = hazmat_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hazmat_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hazmat_unit" do
    assert_difference('HazmatUnit.count') do
      post :create, :hazmat_unit => @hazmat_unit.attributes
    end

    assert_redirected_to hazmat_unit_path(assigns(:hazmat_unit))
  end

  test "should show hazmat_unit" do
    get :show, :id => @hazmat_unit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hazmat_unit.to_param
    assert_response :success
  end

  test "should update hazmat_unit" do
    put :update, :id => @hazmat_unit.to_param, :hazmat_unit => @hazmat_unit.attributes
    assert_redirected_to hazmat_unit_path(assigns(:hazmat_unit))
  end

  test "should destroy hazmat_unit" do
    assert_difference('HazmatUnit.count', -1) do
      delete :destroy, :id => @hazmat_unit.to_param
    end

    assert_redirected_to hazmat_units_path
  end
end
