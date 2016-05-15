require 'test_helper'

class ElevationsControllerTest < ActionController::TestCase
  setup do
    @elevation = elevations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elevations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elevation" do
    assert_difference('Elevation.count') do
      post :create, elevation: {  }
    end

    assert_redirected_to elevation_path(assigns(:elevation))
  end

  test "should show elevation" do
    get :show, id: @elevation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elevation
    assert_response :success
  end

  test "should update elevation" do
    patch :update, id: @elevation, elevation: {  }
    assert_redirected_to elevation_path(assigns(:elevation))
  end

  test "should destroy elevation" do
    assert_difference('Elevation.count', -1) do
      delete :destroy, id: @elevation
    end

    assert_redirected_to elevations_path
  end
end
