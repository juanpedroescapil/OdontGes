require 'test_helper'

class CompraTarjesControllerTest < ActionController::TestCase
  setup do
    @compra_tarje = compra_tarjes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_tarjes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_tarje" do
    assert_difference('CompraTarje.count') do
      post :create, compra_tarje: { cantcuot: @compra_tarje.cantcuot, date: @compra_tarje.date, detalle: @compra_tarje.detalle, lugar: @compra_tarje.lugar, monto: @compra_tarje.monto }
    end

    assert_redirected_to compra_tarje_path(assigns(:compra_tarje))
  end

  test "should show compra_tarje" do
    get :show, id: @compra_tarje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_tarje
    assert_response :success
  end

  test "should update compra_tarje" do
    patch :update, id: @compra_tarje, compra_tarje: { cantcuot: @compra_tarje.cantcuot, date: @compra_tarje.date, detalle: @compra_tarje.detalle, lugar: @compra_tarje.lugar, monto: @compra_tarje.monto }
    assert_redirected_to compra_tarje_path(assigns(:compra_tarje))
  end

  test "should destroy compra_tarje" do
    assert_difference('CompraTarje.count', -1) do
      delete :destroy, id: @compra_tarje
    end

    assert_redirected_to compra_tarjes_path
  end
end
