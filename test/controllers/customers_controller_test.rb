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
      post :create, customer: { document_number: @customer.document_number, first_last_name: @customer.first_last_name, identity_type_id: @customer.identity_type_id, mail: @customer.mail, name: @customer.name, second_last_name: @customer.second_last_name, sex_id: @customer.sex_id }
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
    patch :update, id: @customer, customer: { document_number: @customer.document_number, first_last_name: @customer.first_last_name, identity_type_id: @customer.identity_type_id, mail: @customer.mail, name: @customer.name, second_last_name: @customer.second_last_name, sex_id: @customer.sex_id }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
