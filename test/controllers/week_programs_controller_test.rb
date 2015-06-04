require 'test_helper'

class WeekProgramsControllerTest < ActionController::TestCase
  setup do
    @week_program = week_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:week_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create week_program" do
    assert_difference('WeekProgram.count') do
      post :create, week_program: { Branch_id: @week_program.Branch_id, Product_id: @week_program.Product_id, prosemmen_fecha: @week_program.prosemmen_fecha }
    end

    assert_redirected_to week_program_path(assigns(:week_program))
  end

  test "should show week_program" do
    get :show, id: @week_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @week_program
    assert_response :success
  end

  test "should update week_program" do
    patch :update, id: @week_program, week_program: { Branch_id: @week_program.Branch_id, Product_id: @week_program.Product_id, prosemmen_fecha: @week_program.prosemmen_fecha }
    assert_redirected_to week_program_path(assigns(:week_program))
  end

  test "should destroy week_program" do
    assert_difference('WeekProgram.count', -1) do
      delete :destroy, id: @week_program
    end

    assert_redirected_to week_programs_path
  end
end
