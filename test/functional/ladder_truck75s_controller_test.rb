require 'test_helper'

class LadderTruck75sControllerTest < ActionController::TestCase
  setup do
    @ladder_truck75 = ladder_truck75s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ladder_truck75s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ladder_truck75" do
    assert_difference('LadderTruck75.count') do
      post :create, :ladder_truck75 => @ladder_truck75.attributes
    end

    assert_redirected_to ladder_truck75_path(assigns(:ladder_truck75))
  end

  test "should show ladder_truck75" do
    get :show, :id => @ladder_truck75.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ladder_truck75.to_param
    assert_response :success
  end

  test "should update ladder_truck75" do
    put :update, :id => @ladder_truck75.to_param, :ladder_truck75 => @ladder_truck75.attributes
    assert_redirected_to ladder_truck75_path(assigns(:ladder_truck75))
  end

  test "should destroy ladder_truck75" do
    assert_difference('LadderTruck75.count', -1) do
      delete :destroy, :id => @ladder_truck75.to_param
    end

    assert_redirected_to ladder_truck75s_path
  end
end
