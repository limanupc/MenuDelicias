require 'test_helper'

class OrderDatailsControllerTest < ActionController::TestCase
  setup do
    @order_datail = order_datails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_datails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_datail" do
    assert_difference('OrderDatail.count') do
      post :create, order_datail: { Order_id: @order_datail.Order_id, Product_id: @order_datail.Product_id, peddet_cantidad: @order_datail.peddet_cantidad, peddet_precio: @order_datail.peddet_precio, peddet_sub_total: @order_datail.peddet_sub_total }
    end

    assert_redirected_to order_datail_path(assigns(:order_datail))
  end

  test "should show order_datail" do
    get :show, id: @order_datail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_datail
    assert_response :success
  end

  test "should update order_datail" do
    patch :update, id: @order_datail, order_datail: { Order_id: @order_datail.Order_id, Product_id: @order_datail.Product_id, peddet_cantidad: @order_datail.peddet_cantidad, peddet_precio: @order_datail.peddet_precio, peddet_sub_total: @order_datail.peddet_sub_total }
    assert_redirected_to order_datail_path(assigns(:order_datail))
  end

  test "should destroy order_datail" do
    assert_difference('OrderDatail.count', -1) do
      delete :destroy, id: @order_datail
    end

    assert_redirected_to order_datails_path
  end
end
