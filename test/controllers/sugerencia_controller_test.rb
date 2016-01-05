require 'test_helper'

class SugerenciaControllerTest < ActionController::TestCase
  setup do
    @sugerencium = sugerencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sugerencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sugerencium" do
    assert_difference('Sugerencium.count') do
      post :create, sugerencium: { date: @sugerencium.date, detalle: @sugerencium.detalle, fecha: @sugerencium.fecha, titulo: @sugerencium.titulo }
    end

    assert_redirected_to sugerencium_path(assigns(:sugerencium))
  end

  test "should show sugerencium" do
    get :show, id: @sugerencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sugerencium
    assert_response :success
  end

  test "should update sugerencium" do
    patch :update, id: @sugerencium, sugerencium: { date: @sugerencium.date, detalle: @sugerencium.detalle, fecha: @sugerencium.fecha, titulo: @sugerencium.titulo }
    assert_redirected_to sugerencium_path(assigns(:sugerencium))
  end

  test "should destroy sugerencium" do
    assert_difference('Sugerencium.count', -1) do
      delete :destroy, id: @sugerencium
    end

    assert_redirected_to sugerencia_path
  end
end
