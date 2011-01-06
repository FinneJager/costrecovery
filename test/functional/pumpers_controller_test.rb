require 'test_helper'

class PumpersControllerTest < ActionController::TestCase
  setup do
    @pumper = pumpers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pumpers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pumper" do
    assert_difference('Pumper.count') do
      post :create, :pumper => @pumper.attributes
    end

    assert_redirected_to pumper_path(assigns(:pumper))
  end

  test "should show pumper" do
    get :show, :id => @pumper.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pumper.to_param
    assert_response :success
  end

  test "should update pumper" do
    put :update, :id => @pumper.to_param, :pumper => @pumper.attributes
    assert_redirected_to pumper_path(assigns(:pumper))
  end

  test "should destroy pumper" do
    assert_difference('Pumper.count', -1) do
      delete :destroy, :id => @pumper.to_param
    end

    assert_redirected_to pumpers_path
  end
end
