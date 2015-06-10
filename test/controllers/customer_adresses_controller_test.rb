require 'test_helper'

class CustomerAdressesControllerTest < ActionController::TestCase
  setup do
    @customer_adress = customer_adresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_adresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_adress" do
    assert_difference('CustomerAdress.count') do
      post :create, customer_adress: { Customer_id: @customer_adress.Customer_id, Location_id: @customer_adress.Location_id, address: @customer_adress.address, phone: @customer_adress.phone, reference: @customer_adress.reference }
    end

    assert_redirected_to customer_adress_path(assigns(:customer_adress))
  end

  test "should show customer_adress" do
    get :show, id: @customer_adress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_adress
    assert_response :success
  end

  test "should update customer_adress" do
    patch :update, id: @customer_adress, customer_adress: { Customer_id: @customer_adress.Customer_id, Location_id: @customer_adress.Location_id, address: @customer_adress.address, phone: @customer_adress.phone, reference: @customer_adress.reference }
    assert_redirected_to customer_adress_path(assigns(:customer_adress))
  end

  test "should destroy customer_adress" do
    assert_difference('CustomerAdress.count', -1) do
      delete :destroy, id: @customer_adress
    end

    assert_redirected_to customer_adresses_path
  end
end
