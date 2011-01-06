require 'test_helper'

class EmergencySupportsControllerTest < ActionController::TestCase
  setup do
    @emergency_support = emergency_supports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergency_supports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergency_support" do
    assert_difference('EmergencySupport.count') do
      post :create, :emergency_support => @emergency_support.attributes
    end

    assert_redirected_to emergency_support_path(assigns(:emergency_support))
  end

  test "should show emergency_support" do
    get :show, :id => @emergency_support.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @emergency_support.to_param
    assert_response :success
  end

  test "should update emergency_support" do
    put :update, :id => @emergency_support.to_param, :emergency_support => @emergency_support.attributes
    assert_redirected_to emergency_support_path(assigns(:emergency_support))
  end

  test "should destroy emergency_support" do
    assert_difference('EmergencySupport.count', -1) do
      delete :destroy, :id => @emergency_support.to_param
    end

    assert_redirected_to emergency_supports_path
  end
end
