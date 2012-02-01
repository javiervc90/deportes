require 'test_helper'

class AcreditacionesControllerTest < ActionController::TestCase
  setup do
    @acreditacione = acreditaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acreditaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acreditacione" do
    assert_difference('Acreditacione.count') do
      post :create, :acreditacione => @acreditacione.attributes
    end

    assert_redirected_to acreditacione_path(assigns(:acreditacione))
  end

  test "should show acreditacione" do
    get :show, :id => @acreditacione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @acreditacione.to_param
    assert_response :success
  end

  test "should update acreditacione" do
    put :update, :id => @acreditacione.to_param, :acreditacione => @acreditacione.attributes
    assert_redirected_to acreditacione_path(assigns(:acreditacione))
  end

  test "should destroy acreditacione" do
    assert_difference('Acreditacione.count', -1) do
      delete :destroy, :id => @acreditacione.to_param
    end

    assert_redirected_to acreditaciones_path
  end
end
