require 'test_helper'

class MatListsControllerTest < ActionController::TestCase
  setup do
    @mat_list = mat_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mat_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mat_list" do
    assert_difference('MatList.count') do
      post :create, :mat_list => @mat_list.attributes
    end

    assert_redirected_to mat_list_path(assigns(:mat_list))
  end

  test "should show mat_list" do
    get :show, :id => @mat_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mat_list.to_param
    assert_response :success
  end

  test "should update mat_list" do
    put :update, :id => @mat_list.to_param, :mat_list => @mat_list.attributes
    assert_redirected_to mat_list_path(assigns(:mat_list))
  end

  test "should destroy mat_list" do
    assert_difference('MatList.count', -1) do
      delete :destroy, :id => @mat_list.to_param
    end

    assert_redirected_to mat_lists_path
  end
end
