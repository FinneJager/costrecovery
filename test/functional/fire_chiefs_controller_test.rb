require 'test_helper'

class FireChiefsControllerTest < ActionController::TestCase
  setup do
    @fire_chief = fire_chiefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fire_chiefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fire_chief" do
    assert_difference('FireChief.count') do
      post :create, :fire_chief => @fire_chief.attributes
    end

    assert_redirected_to fire_chief_path(assigns(:fire_chief))
  end

  test "should show fire_chief" do
    get :show, :id => @fire_chief.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fire_chief.to_param
    assert_response :success
  end

  test "should update fire_chief" do
    put :update, :id => @fire_chief.to_param, :fire_chief => @fire_chief.attributes
    assert_redirected_to fire_chief_path(assigns(:fire_chief))
  end

  test "should destroy fire_chief" do
    assert_difference('FireChief.count', -1) do
      delete :destroy, :id => @fire_chief.to_param
    end

    assert_redirected_to fire_chiefs_path
  end
end
