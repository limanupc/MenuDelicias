require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { Branch_id: @order.Branch_id, Customer_id: @order.Customer_id, Document_type_id: @order.Document_type_id, date_application: @order.date_application, date_voucher: @order.date_voucher, delivery_date: @order.delivery_date, delivery_time: @order.delivery_time, flag: @order.flag, series: @order.series, staff: @order.staff, total: @order.total }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { Branch_id: @order.Branch_id, Customer_id: @order.Customer_id, Document_type_id: @order.Document_type_id, date_application: @order.date_application, date_voucher: @order.date_voucher, delivery_date: @order.delivery_date, delivery_time: @order.delivery_time, flag: @order.flag, series: @order.series, staff: @order.staff, total: @order.total }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
