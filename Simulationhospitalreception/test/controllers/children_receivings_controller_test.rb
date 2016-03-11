require 'test_helper'

class ChildrenReceivingsControllerTest < ActionController::TestCase
  setup do
    @children_receiving = children_receivings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children_receivings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create children_receiving" do
    assert_difference('ChildrenReceiving.count') do
      post :create, children_receiving: {  }
    end

    assert_redirected_to children_receiving_path(assigns(:children_receiving))
  end

  test "should show children_receiving" do
    get :show, id: @children_receiving
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @children_receiving
    assert_response :success
  end

  test "should update children_receiving" do
    patch :update, id: @children_receiving, children_receiving: {  }
    assert_redirected_to children_receiving_path(assigns(:children_receiving))
  end

  test "should destroy children_receiving" do
    assert_difference('ChildrenReceiving.count', -1) do
      delete :destroy, id: @children_receiving
    end

    assert_redirected_to children_receivings_path
  end
end
