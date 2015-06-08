require 'test_helper'

class IdentutyTypesControllerTest < ActionController::TestCase
  setup do
    @identuty_type = identuty_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:identuty_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create identuty_type" do
    assert_difference('IdentutyType.count') do
      post :create, identuty_type: { description: @identuty_type.description }
    end

    assert_redirected_to identuty_type_path(assigns(:identuty_type))
  end

  test "should show identuty_type" do
    get :show, id: @identuty_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @identuty_type
    assert_response :success
  end

  test "should update identuty_type" do
    patch :update, id: @identuty_type, identuty_type: { description: @identuty_type.description }
    assert_redirected_to identuty_type_path(assigns(:identuty_type))
  end

  test "should destroy identuty_type" do
    assert_difference('IdentutyType.count', -1) do
      delete :destroy, id: @identuty_type
    end

    assert_redirected_to identuty_types_path
  end
end
