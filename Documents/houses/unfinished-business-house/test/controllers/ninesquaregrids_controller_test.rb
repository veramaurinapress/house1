require 'test_helper'

class NinesquaregridsControllerTest < ActionController::TestCase
  setup do
    @ninesquaregrid = ninesquaregrids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ninesquaregrids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ninesquaregrid" do
    assert_difference('Ninesquaregrid.count') do
      post :create, ninesquaregrid: { picture: @ninesquaregrid.picture, text: @ninesquaregrid.text }
    end

    assert_redirected_to ninesquaregrid_path(assigns(:ninesquaregrid))
  end

  test "should show ninesquaregrid" do
    get :show, id: @ninesquaregrid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ninesquaregrid
    assert_response :success
  end

  test "should update ninesquaregrid" do
    patch :update, id: @ninesquaregrid, ninesquaregrid: { picture: @ninesquaregrid.picture, text: @ninesquaregrid.text }
    assert_redirected_to ninesquaregrid_path(assigns(:ninesquaregrid))
  end

  test "should destroy ninesquaregrid" do
    assert_difference('Ninesquaregrid.count', -1) do
      delete :destroy, id: @ninesquaregrid
    end

    assert_redirected_to ninesquaregrids_path
  end
end
