require 'test_helper'

class IdentityTypesControllerTest < ActionController::TestCase
  setup do
    @identity_type = identity_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:identity_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create identity_type" do
    assert_difference('IdentityType.count') do
      post :create, identity_type: { description: @identity_type.description }
    end

    assert_redirected_to identity_type_path(assigns(:identity_type))
  end

  test "should show identity_type" do
    get :show, id: @identity_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @identity_type
    assert_response :success
  end

  test "should update identity_type" do
    patch :update, id: @identity_type, identity_type: { description: @identity_type.description }
    assert_redirected_to identity_type_path(assigns(:identity_type))
  end

  test "should destroy identity_type" do
    assert_difference('IdentityType.count', -1) do
      delete :destroy, id: @identity_type
    end

    assert_redirected_to identity_types_path
  end
end
