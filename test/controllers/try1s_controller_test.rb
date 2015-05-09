require 'test_helper'

class Try1sControllerTest < ActionController::TestCase
  setup do
    @try1 = try1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:try1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create try1" do
    assert_difference('Try1.count') do
      post :create, try1: { address: @try1.address, cpnumber: @try1.cpnumber, name: @try1.name }
    end

    assert_redirected_to try1_path(assigns(:try1))
  end

  test "should show try1" do
    get :show, id: @try1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @try1
    assert_response :success
  end

  test "should update try1" do
    patch :update, id: @try1, try1: { address: @try1.address, cpnumber: @try1.cpnumber, name: @try1.name }
    assert_redirected_to try1_path(assigns(:try1))
  end

  test "should destroy try1" do
    assert_difference('Try1.count', -1) do
      delete :destroy, id: @try1
    end

    assert_redirected_to try1s_path
  end
end
