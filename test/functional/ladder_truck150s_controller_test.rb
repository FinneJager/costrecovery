require 'test_helper'

class LadderTruck150sControllerTest < ActionController::TestCase
  setup do
    @ladder_truck150 = ladder_truck150s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ladder_truck150s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ladder_truck150" do
    assert_difference('LadderTruck150.count') do
      post :create, :ladder_truck150 => @ladder_truck150.attributes
    end

    assert_redirected_to ladder_truck150_path(assigns(:ladder_truck150))
  end

  test "should show ladder_truck150" do
    get :show, :id => @ladder_truck150.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ladder_truck150.to_param
    assert_response :success
  end

  test "should update ladder_truck150" do
    put :update, :id => @ladder_truck150.to_param, :ladder_truck150 => @ladder_truck150.attributes
    assert_redirected_to ladder_truck150_path(assigns(:ladder_truck150))
  end

  test "should destroy ladder_truck150" do
    assert_difference('LadderTruck150.count', -1) do
      delete :destroy, :id => @ladder_truck150.to_param
    end

    assert_redirected_to ladder_truck150s_path
  end
end
