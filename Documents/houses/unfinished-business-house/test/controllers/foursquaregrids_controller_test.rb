require 'test_helper'

class FoursquaregridsControllerTest < ActionController::TestCase
  setup do
    @foursquaregrid = foursquaregrids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foursquaregrids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foursquaregrid" do
    assert_difference('Foursquaregrid.count') do
      post :create, foursquaregrid: { picture: @foursquaregrid.picture, text: @foursquaregrid.text }
    end

    assert_redirected_to foursquaregrid_path(assigns(:foursquaregrid))
  end

  test "should show foursquaregrid" do
    get :show, id: @foursquaregrid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foursquaregrid
    assert_response :success
  end

  test "should update foursquaregrid" do
    patch :update, id: @foursquaregrid, foursquaregrid: { picture: @foursquaregrid.picture, text: @foursquaregrid.text }
    assert_redirected_to foursquaregrid_path(assigns(:foursquaregrid))
  end

  test "should destroy foursquaregrid" do
    assert_difference('Foursquaregrid.count', -1) do
      delete :destroy, id: @foursquaregrid
    end

    assert_redirected_to foursquaregrids_path
  end
end
