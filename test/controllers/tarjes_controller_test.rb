require 'test_helper'

class TarjesControllerTest < ActionController::TestCase
  setup do
    @tarje = tarjes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tarjes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tarje" do
    assert_difference('Tarje.count') do
      post :create, tarje: { banco: @tarje.banco, color: @tarje.color, nombre: @tarje.nombre }
    end

    assert_redirected_to tarje_path(assigns(:tarje))
  end

  test "should show tarje" do
    get :show, id: @tarje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tarje
    assert_response :success
  end

  test "should update tarje" do
    patch :update, id: @tarje, tarje: { banco: @tarje.banco, color: @tarje.color, nombre: @tarje.nombre }
    assert_redirected_to tarje_path(assigns(:tarje))
  end

  test "should destroy tarje" do
    assert_difference('Tarje.count', -1) do
      delete :destroy, id: @tarje
    end

    assert_redirected_to tarjes_path
  end
end
