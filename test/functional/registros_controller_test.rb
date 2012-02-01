require 'test_helper'

class RegistrosControllerTest < ActionController::TestCase
  setup do
    @registro = registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro" do
    assert_difference('Registro.count') do
      post :create, :registro => @registro.attributes
    end

    assert_redirected_to registro_path(assigns(:registro))
  end

  test "should show registro" do
    get :show, :id => @registro.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @registro.to_param
    assert_response :success
  end

  test "should update registro" do
    put :update, :id => @registro.to_param, :registro => @registro.attributes
    assert_redirected_to registro_path(assigns(:registro))
  end

  test "should destroy registro" do
    assert_difference('Registro.count', -1) do
      delete :destroy, :id => @registro.to_param
    end

    assert_redirected_to registros_path
  end
end
