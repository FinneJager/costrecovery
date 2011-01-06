require 'test_helper'

class TankersControllerTest < ActionController::TestCase
  setup do
    @tanker = tankers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tankers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tanker" do
    assert_difference('Tanker.count') do
      post :create, :tanker => @tanker.attributes
    end

    assert_redirected_to tanker_path(assigns(:tanker))
  end

  test "should show tanker" do
    get :show, :id => @tanker.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tanker.to_param
    assert_response :success
  end

  test "should update tanker" do
    put :update, :id => @tanker.to_param, :tanker => @tanker.attributes
    assert_redirected_to tanker_path(assigns(:tanker))
  end

  test "should destroy tanker" do
    assert_difference('Tanker.count', -1) do
      delete :destroy, :id => @tanker.to_param
    end

    assert_redirected_to tankers_path
  end
end
