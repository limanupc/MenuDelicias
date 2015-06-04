require 'test_helper'

class CorrelativesControllerTest < ActionController::TestCase
  setup do
    @correlative = correlatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correlatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correlative" do
    assert_difference('Correlative.count') do
      post :create, correlative: { branch_id: @correlative.branch_id, cor_numero: @correlative.cor_numero, cor_serie: @correlative.cor_serie, document_type_id: @correlative.document_type_id }
    end

    assert_redirected_to correlative_path(assigns(:correlative))
  end

  test "should show correlative" do
    get :show, id: @correlative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correlative
    assert_response :success
  end

  test "should update correlative" do
    patch :update, id: @correlative, correlative: { branch_id: @correlative.branch_id, cor_numero: @correlative.cor_numero, cor_serie: @correlative.cor_serie, document_type_id: @correlative.document_type_id }
    assert_redirected_to correlative_path(assigns(:correlative))
  end

  test "should destroy correlative" do
    assert_difference('Correlative.count', -1) do
      delete :destroy, id: @correlative
    end

    assert_redirected_to correlatives_path
  end
end
