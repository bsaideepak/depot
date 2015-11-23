require 'test_helper'

class GCsControllerTest < ActionController::TestCase
  setup do
    @gc = gcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gc" do
    assert_difference('Gc.count') do
      post :create, gc: {  }
    end

    assert_redirected_to gc_path(assigns(:gc))
  end

  test "should show gc" do
    get :show, id: @gc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gc
    assert_response :success
  end

  test "should update gc" do
    patch :update, id: @gc, gc: {  }
    assert_redirected_to gc_path(assigns(:gc))
  end

  test "should destroy gc" do
    assert_difference('Gc.count', -1) do
      delete :destroy, id: @gc
    end

    assert_redirected_to gcs_path
  end
end
