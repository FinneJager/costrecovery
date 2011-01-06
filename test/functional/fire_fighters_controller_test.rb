require 'test_helper'

class FireFightersControllerTest < ActionController::TestCase
  setup do
    @fire_fighter = fire_fighters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fire_fighters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fire_fighter" do
    assert_difference('FireFighter.count') do
      post :create, :fire_fighter => @fire_fighter.attributes
    end

    assert_redirected_to fire_fighter_path(assigns(:fire_fighter))
  end

  test "should show fire_fighter" do
    get :show, :id => @fire_fighter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fire_fighter.to_param
    assert_response :success
  end

  test "should update fire_fighter" do
    put :update, :id => @fire_fighter.to_param, :fire_fighter => @fire_fighter.attributes
    assert_redirected_to fire_fighter_path(assigns(:fire_fighter))
  end

  test "should destroy fire_fighter" do
    assert_difference('FireFighter.count', -1) do
      delete :destroy, :id => @fire_fighter.to_param
    end

    assert_redirected_to fire_fighters_path
  end
end
