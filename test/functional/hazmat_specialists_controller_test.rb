require 'test_helper'

class HazmatSpecialistsControllerTest < ActionController::TestCase
  setup do
    @hazmat_specialist = hazmat_specialists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hazmat_specialists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hazmat_specialist" do
    assert_difference('HazmatSpecialist.count') do
      post :create, :hazmat_specialist => @hazmat_specialist.attributes
    end

    assert_redirected_to hazmat_specialist_path(assigns(:hazmat_specialist))
  end

  test "should show hazmat_specialist" do
    get :show, :id => @hazmat_specialist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hazmat_specialist.to_param
    assert_response :success
  end

  test "should update hazmat_specialist" do
    put :update, :id => @hazmat_specialist.to_param, :hazmat_specialist => @hazmat_specialist.attributes
    assert_redirected_to hazmat_specialist_path(assigns(:hazmat_specialist))
  end

  test "should destroy hazmat_specialist" do
    assert_difference('HazmatSpecialist.count', -1) do
      delete :destroy, :id => @hazmat_specialist.to_param
    end

    assert_redirected_to hazmat_specialists_path
  end
end
