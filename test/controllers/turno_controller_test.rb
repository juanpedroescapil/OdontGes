require 'test_helper'

class TurnoControllerTest < ActionController::TestCase
  test "should get id_paciente:integer" do
    get :id_paciente:integer
    assert_response :success
  end

  test "should get id_usuario:integer" do
    get :id_usuario:integer
    assert_response :success
  end

  test "should get hora:string" do
    get :hora:string
    assert_response :success
  end

  test "should get dia:string" do
    get :dia:string
    assert_response :success
  end

end
