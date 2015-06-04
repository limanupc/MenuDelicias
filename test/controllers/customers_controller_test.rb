require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { Identity_Type_id: @customer.Identity_Type_id, Sex_id: @customer.Sex_id, cli_apmaterno: @customer.cli_apmaterno, cli_appaterno: @customer.cli_appaterno, cli_nombre: @customer.cli_nombre, tipdocide_numero: @customer.tipdocide_numero }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { Identity_Type_id: @customer.Identity_Type_id, Sex_id: @customer.Sex_id, cli_apmaterno: @customer.cli_apmaterno, cli_appaterno: @customer.cli_appaterno, cli_nombre: @customer.cli_nombre, tipdocide_numero: @customer.tipdocide_numero }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
