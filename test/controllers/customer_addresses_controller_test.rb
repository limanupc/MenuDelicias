require 'test_helper'

class CustomerAddressesControllerTest < ActionController::TestCase
  setup do
    @customer_address = customer_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_address" do
    assert_difference('CustomerAddress.count') do
      post :create, customer_address: { Customer_id: @customer_address.Customer_id, Location_id: @customer_address.Location_id, clidir_direccion: @customer_address.clidir_direccion, clidir_referencia: @customer_address.clidir_referencia, clidir_telefono: @customer_address.clidir_telefono }
    end

    assert_redirected_to customer_address_path(assigns(:customer_address))
  end

  test "should show customer_address" do
    get :show, id: @customer_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_address
    assert_response :success
  end

  test "should update customer_address" do
    patch :update, id: @customer_address, customer_address: { Customer_id: @customer_address.Customer_id, Location_id: @customer_address.Location_id, clidir_direccion: @customer_address.clidir_direccion, clidir_referencia: @customer_address.clidir_referencia, clidir_telefono: @customer_address.clidir_telefono }
    assert_redirected_to customer_address_path(assigns(:customer_address))
  end

  test "should destroy customer_address" do
    assert_difference('CustomerAddress.count', -1) do
      delete :destroy, id: @customer_address
    end

    assert_redirected_to customer_addresses_path
  end
end
