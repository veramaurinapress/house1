require 'test_helper'

class SixteensquaregridsControllerTest < ActionController::TestCase
  setup do
    @sixteensquaregrid = sixteensquaregrids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sixteensquaregrids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sixteensquaregrid" do
    assert_difference('Sixteensquaregrid.count') do
      post :create, sixteensquaregrid: { picture: @sixteensquaregrid.picture, text: @sixteensquaregrid.text }
    end

    assert_redirected_to sixteensquaregrid_path(assigns(:sixteensquaregrid))
  end

  test "should show sixteensquaregrid" do
    get :show, id: @sixteensquaregrid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sixteensquaregrid
    assert_response :success
  end

  test "should update sixteensquaregrid" do
    patch :update, id: @sixteensquaregrid, sixteensquaregrid: { picture: @sixteensquaregrid.picture, text: @sixteensquaregrid.text }
    assert_redirected_to sixteensquaregrid_path(assigns(:sixteensquaregrid))
  end

  test "should destroy sixteensquaregrid" do
    assert_difference('Sixteensquaregrid.count', -1) do
      delete :destroy, id: @sixteensquaregrid
    end

    assert_redirected_to sixteensquaregrids_path
  end
end
