require 'test_helper'

class FieldUnitsControllerTest < ActionController::TestCase
  setup do
    @field_unit = field_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_unit" do
    assert_difference('FieldUnit.count') do
      post :create, :field_unit => @field_unit.attributes
    end

    assert_redirected_to field_unit_path(assigns(:field_unit))
  end

  test "should show field_unit" do
    get :show, :id => @field_unit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @field_unit.to_param
    assert_response :success
  end

  test "should update field_unit" do
    put :update, :id => @field_unit.to_param, :field_unit => @field_unit.attributes
    assert_redirected_to field_unit_path(assigns(:field_unit))
  end

  test "should destroy field_unit" do
    assert_difference('FieldUnit.count', -1) do
      delete :destroy, :id => @field_unit.to_param
    end

    assert_redirected_to field_units_path
  end
end
