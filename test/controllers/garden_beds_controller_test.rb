require 'test_helper'

class GardenBedsControllerTest < ActionController::TestCase
  setup do
    @garden_bed = garden_beds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garden_beds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garden_bed" do
    assert_difference('GardenBed.count') do
      post :create, garden_bed: {  }
    end

    assert_redirected_to garden_bed_path(assigns(:garden_bed))
  end

  test "should show garden_bed" do
    get :show, id: @garden_bed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garden_bed
    assert_response :success
  end

  test "should update garden_bed" do
    patch :update, id: @garden_bed, garden_bed: {  }
    assert_redirected_to garden_bed_path(assigns(:garden_bed))
  end

  test "should destroy garden_bed" do
    assert_difference('GardenBed.count', -1) do
      delete :destroy, id: @garden_bed
    end

    assert_redirected_to garden_beds_path
  end
end
