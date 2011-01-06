require 'test_helper'

class SafetyOfficersControllerTest < ActionController::TestCase
  setup do
    @safety_officer = safety_officers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:safety_officers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create safety_officer" do
    assert_difference('SafetyOfficer.count') do
      post :create, :safety_officer => @safety_officer.attributes
    end

    assert_redirected_to safety_officer_path(assigns(:safety_officer))
  end

  test "should show safety_officer" do
    get :show, :id => @safety_officer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @safety_officer.to_param
    assert_response :success
  end

  test "should update safety_officer" do
    put :update, :id => @safety_officer.to_param, :safety_officer => @safety_officer.attributes
    assert_redirected_to safety_officer_path(assigns(:safety_officer))
  end

  test "should destroy safety_officer" do
    assert_difference('SafetyOfficer.count', -1) do
      delete :destroy, :id => @safety_officer.to_param
    end

    assert_redirected_to safety_officers_path
  end
end
