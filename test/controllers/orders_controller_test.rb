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
      post :create, order: { Branch_id: @order.Branch_id, Customer_id: @order.Customer_id, cor_serie: @order.cor_serie, ped_estado: @order.ped_estado, ped_fecha_comprobante: @order.ped_fecha_comprobante, ped_fecha_entrega: @order.ped_fecha_entrega, ped_fecha_solicitud: @order.ped_fecha_solicitud, ped_hora_entrega: @order.ped_hora_entrega, ped_total: @order.ped_total, perso_atendio: @order.perso_atendio, tipdoc_codigo: @order.tipdoc_codigo }
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
    patch :update, id: @order, order: { Branch_id: @order.Branch_id, Customer_id: @order.Customer_id, cor_serie: @order.cor_serie, ped_estado: @order.ped_estado, ped_fecha_comprobante: @order.ped_fecha_comprobante, ped_fecha_entrega: @order.ped_fecha_entrega, ped_fecha_solicitud: @order.ped_fecha_solicitud, ped_hora_entrega: @order.ped_hora_entrega, ped_total: @order.ped_total, perso_atendio: @order.perso_atendio, tipdoc_codigo: @order.tipdoc_codigo }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
