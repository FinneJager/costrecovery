require 'test_helper'

class EmtsControllerTest < ActionController::TestCase
  setup do
    @emt = emts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emt" do
    assert_difference('Emt.count') do
      post :create, :emt => @emt.attributes
    end

    assert_redirected_to emt_path(assigns(:emt))
  end

  test "should show emt" do
    get :show, :id => @emt.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @emt.to_param
    assert_response :success
  end

  test "should update emt" do
    put :update, :id => @emt.to_param, :emt => @emt.attributes
    assert_redirected_to emt_path(assigns(:emt))
  end

  test "should destroy emt" do
    assert_difference('Emt.count', -1) do
      delete :destroy, :id => @emt.to_param
    end

    assert_redirected_to emts_path
  end
end
