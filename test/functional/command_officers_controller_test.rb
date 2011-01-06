require 'test_helper'

class CommandOfficersControllerTest < ActionController::TestCase
  setup do
    @command_officer = command_officers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:command_officers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create command_officer" do
    assert_difference('CommandOfficer.count') do
      post :create, :command_officer => @command_officer.attributes
    end

    assert_redirected_to command_officer_path(assigns(:command_officer))
  end

  test "should show command_officer" do
    get :show, :id => @command_officer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @command_officer.to_param
    assert_response :success
  end

  test "should update command_officer" do
    put :update, :id => @command_officer.to_param, :command_officer => @command_officer.attributes
    assert_redirected_to command_officer_path(assigns(:command_officer))
  end

  test "should destroy command_officer" do
    assert_difference('CommandOfficer.count', -1) do
      delete :destroy, :id => @command_officer.to_param
    end

    assert_redirected_to command_officers_path
  end
end
